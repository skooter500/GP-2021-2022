void setup()
{
  size(500, 500);
  colorMode(RGB);
}


void draw()
{
  background(0);
  stroke(255);
  line(10, 10, 100, 100);
  fill(0, 255, 0);
  circle(50, 5, 100);
  ellipse(100, 200, 100, 50);
  rectMode(CORNER);
  rect(200, 200, 100, 20);
  point(300, 300);
  triangle(400, 400, 300, 300, 200, 400);
  noFill();
  rect(100, 100, 200, 200);
  noStroke();
  fill(255, 0, 0);
  rect(300, 300, 50, 50);
  
}
