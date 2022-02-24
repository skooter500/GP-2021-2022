class Player
{
  // Fields
  float size;
  float halfSize;
  float x, y;
  float speed = 1;
  float rotation;
  
  // Constructor
  // Same name as the class
  // No return type
  Player(float x, float y, float size)
  {
    // Disambiguation
    this.size = size;
    halfSize = size / 2;
    this.x = x;
    this.y = y;
    rotation = 0;
  }

  // Methods
  void update()
  {
    if (keyPressed)
    {
      if (key == 'a')
      {
        rotation -= 0.1f;
      }
      if (key == 'd')
      {
        rotation += 0.1f;
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
    translate(x,y);
    rotate(rotation);
    stroke(255);
    line(0, 0, - halfSize, halfSize);
    line( - halfSize, halfSize, 0, - halfSize);
    line(0, - halfSize, halfSize, halfSize);
    line(halfSize, halfSize, 0, 0);
  }
}
