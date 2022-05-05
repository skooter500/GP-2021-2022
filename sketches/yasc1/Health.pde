class Health
{
  // Fields
  float size;
  float halfSize;
  float x, y;
  float speed = 1;
  float rotation;
  float fx, fy;
  
  Health(float x, float y)
  {
    this.x = x;
    this.y = y;
    size = 50;
    halfSize = size / 2;
    fx = random(-5, 5);
    fy = random(-5, 5);
    rotation = 0;
  }
  
  void update()
  {
    x += fx;
    y += fy;
    if (x < 0)
    {
      x = width;
    }
    if (x > width)
    {
      x = 0;
    }
    if (y < 0)
    {
      y = height;
    }
    if (y > height)
    {
      y = 0;
    }
    rotation += 0.05f;
  }
  
  void render()
  {
    pushMatrix();
    translate(x, y);
    rotate(rotation);
    stroke(255);
    line(0, - halfSize, 0, halfSize);
    line(-halfSize, 0, halfSize, 0);
    rectMode(CENTER);
    noFill();
    rect(0, 0, size, size);
    popMatrix();
  }
  
}
