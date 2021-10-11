void setup()
{
  size(500, 500);
  background(0);
  colorMode(HSB);
}

void draw()
{
  stroke(255);
  strokeWeight(5);
  stroke(((mouseX + mouseY )/1000.0f)* 255, 255, 255);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
