import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioBuffer ab;
AudioPlayer ap;
AudioInput ai;

void setup()
{
  size(1024, 500);
  minim = new Minim(this);
  //ai = minim.getLineIn(Minim.MONO,1024,44100, 16);
  ap = minim.loadFile("Gorgon City - All Four Walls ft. Vaults.mp3");
  ap.play();
  ab = ap.mix;
  
  int[] arr = {10, 15, 7, 9, 12, 17};
  
  float sum = 0;
  for(int i = 0 ; i < arr.length; i ++)
  {
    sum +=arr[i];
  }
  
  float average = sum / (float)arr.length;
  
  
  
}

float lerpedAverage = 0;

void draw()
{
  background(0);
  stroke(255);
  float sum = 0;
  for(int i = 0 ; i < ab.size(); i ++)
  {
    //line(i, height / 2, i,(height/2)+ ab.get(i)*250);
    sum +=abs(ab.get(i));
  }
  float average = sum / (float)ab.size();
  lerpedAverage = lerp(lerpedAverage, average, 0.1f);
  fill(255, 0, 0);
  circle(width / 2, height / 2, lerpedAverage * 1000);
  
}
