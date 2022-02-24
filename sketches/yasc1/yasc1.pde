void setup()
{
  size(500, 500);
  x = width / 2;
  y = height / 2;
}

float size = 50;
float halfSize = size / 2;
float x, y;
float speed = 1;

void drawPlayer(float x, float y)
{
  stroke(255);
  line(x, y, x - halfSize, y + halfSize);
  line(x - halfSize, y + halfSize, x, y - halfSize);
  line(x, y - halfSize, x + halfSize, y + halfSize);
  line(x + halfSize, y + halfSize, x, y);
}

void keyPressed()
{
  if (key == 'a')
  {
    x -= speed;
  }
  if (key == 'd')
  {
    x += speed;
  }
  if (key == 'w')
  {
    y -= speed;
  }
  if (key == 's')
  {
    y += speed;
  }
  
}


void draw()
{
  background(0);
  drawPlayer(x, y);
}
