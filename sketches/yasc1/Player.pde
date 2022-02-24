class Player
{
  // Fields
  float size = 50;
  float halfSize = size / 2;
  float x, y;
  float speed = 1;

  // Methods
  void update()
  {
    if (keyPressed)
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
  }

  void render()
  {
    stroke(255);
    line(x, y, x - halfSize, y + halfSize);
    line(x - halfSize, y + halfSize, x, y - halfSize);
    line(x, y - halfSize, x + halfSize, y + halfSize);
    line(x + halfSize, y + halfSize, x, y);
  }
}
