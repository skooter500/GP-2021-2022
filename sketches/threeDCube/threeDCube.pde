import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioInput ai;
AudioBuffer ab;
AudioPlayer ap;

void setup()
{
  size(1000, 1000, P3D);
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO, 1024, 44100, 16);
  // ap = minim.loadFile("", 1024);
  // ab = ap.mix
  ab = ai.mix;
}

float theta;
float speed = 0;
void draw()
{
  float total = 0;
  for(int i = 0 ; i < ab.size() ; i ++)
  {
    total += abs(ab.get(i));
  }
  float average = total / (float) ab.size();
    
  background(0);
  noFill();
  strokeWeight(2);
  stroke(255);
  lights();
  pushMatrix();
  translate(width * .25, height / 2, 0);
  //rotateX(theta); // TWO_PI, PI, QUARER_PI?  
  //rotateY(theta); // TWO_PI, PI, QUARER_PI?  
  rotateZ(theta); // TWO_PI, PI, QUARER_PI?    
  float size = map(average, 0,1, 100, 500);
  box(size);
  popMatrix();
  
  pushMatrix();
  translate(width * .75, height / 2, 0);
  rotateX(theta); // TWO_PI, PI, QUARER_PI?  
  rotateY(theta); // TWO_PI, PI, QUARER_PI?  
  rotateZ(theta); // TWO_PI, PI, QUARER_PI?  
  box(size);
  popMatrix();
  theta += speed;
  speed = map(mouseX, 0, width, 0, 0.1f); 
}
