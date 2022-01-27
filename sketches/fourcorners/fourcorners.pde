void setup()
{
  size(500, 500);
  
  x1 = width / 2;
  x2 = height / 2;
  
}

float x1, x2;

void draw()
{
  background(0);
  noStroke();
  fill(0, 0, 255);
  circle(x1, x1, 50);
  x1 ++;
  x2 --;
  
  fill(255, 0, 0);
  circle(x1, x2, 50);
  
  fill(255, 255, 0);
  circle(x2, x2, 50);
  
  
  fill(255, 0, 255);
  circle(x2, x1, 50);
  
}
