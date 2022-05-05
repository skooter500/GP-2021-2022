import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(1024, 500);
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO, 1024, 44100, 16);
  ab = ai.mix;
  
  fft = new FFT(1024, 44100);
  colorMode(HSB);
  
  println(magicMap(4, 0, 20, 1000, 4000));
  
}

Minim minim;
AudioPlayer ap;
AudioInput ai;
AudioBuffer ab;
float lerpedY;

FFT fft;

float magicMap(float a, float b, float c, float d, float e)
{
  float r1 = c - b;
  float r2 = e-d;
  
  float howFar = a - b;
  
  return d + ((howFar/r1) * r2);
}

float lerpedX = 0;

void draw()
{
  background(0);
  stroke(255);
  float halfH = height /2;
  for(int i = 0 ; i < ab.size(); i ++)
  {
    stroke (map(i, 0, ab.size(), 0, 255), 255, 255);
    line(i, halfH, i, halfH + ab.get(i) * halfH);
  }
  
  fft.window(FFT.HAMMING);
  fft.forward(ab);
  
  for(int i = 0 ; i < fft.specSize() ; i ++)
  {
    line(i, 0, i, fft.getBand(i));
  }
  
  int highestIndex = 0;
  
  // Your code goes here!!
  for(int i = 0 ; i < fft.specSize() ; i ++)
  {
    if (fft.getBand(i) > fft.getBand(highestIndex))
    {
      highestIndex = i;
    }
  }
  println(highestIndex);
  float x = map(highestIndex, 22, 54, 50, width -50);
  lerpedX = lerp(lerpedX, x, 0.1f);
  circle(lerpedX, 300, 50);
  float freq = fft.indexToFreq(highestIndex);
  fill(255);
  text("Frequency: "+ freq, 20, 400);
    
}
