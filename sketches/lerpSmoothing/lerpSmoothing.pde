void setup()
{
  size(500, 500);
  y = height / 2;
  lerpedY = y;
  
}

float y;
float lerpedY;

void draw()
{
  background(0);
  noStroke();
  fill(255, 0, 0);
  ellipse(200, y, 50, 50);
  ellipse(400, lerpedY, 50, 50);
  
  y = mouseY;
  
  lerpedY = lerp(lerpedY, y, 0.1f);
  
}
