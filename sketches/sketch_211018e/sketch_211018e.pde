void setup()
{
  //size(500, 500);
  fullScreen();
  
  cx = width / 2;
  cy = height / 2;
  px = cx;
  py = cy;
  r = 0;
  background(0);
  colorMode(HSB);
  
}

float x, y;
float cx, cy;
float px, py;
float r = 1;
float theta = 0;

void draw()
{
  x = cx + sin(theta) * r;
  y = cy - cos(theta) * r;
  
  noStroke();
  strokeWeight(3);
  stroke(r % 256, 255, 255);
  //circle(x, y, 6);
  line(px, py, x, y);
  theta += 0.5f;
  r += 5;
  
  px = x;
  py = y;
}
