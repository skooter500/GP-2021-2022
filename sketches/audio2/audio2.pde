import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Get average amplitude of buffer
// Calculate lerpedAmplitude
// Draw a circle
// Make an array of type float the same size as the buffer
// Lerp each element of the array to the corresponding element in the buffer
// Use the lerped values from the array to do the visualisation instead of using the buffer

void setup()
{
  size(1024, 500);
  
   minim = new Minim(this);
   ap = minim.loadFile("Gorgon City - All Four Walls ft. Vaults.mp3", 1024);
   ap.play();
   ab = ap.mix;
   halfH = height/2;
   colorInc= 255/(float)ab.size();
   colorMode(HSB);
   
}

Minim minim;
AudioPlayer ap;
AudioInput ai;
AudioBuffer ab;

float halfH;

float colorInc;

void draw()
{
  background(0);
  for(int i = 0;i<ab.size();i++)
  {
    stroke(colorInc * i, 255, 255);
    line(i, halfH-ab.get(i)*halfH, i, halfH+ab.get(i)*halfH);
  }
}
