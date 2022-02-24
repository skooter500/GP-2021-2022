void setup()
{
  size(500, 500);
  p = new Player(width / 2, height / 2, 50);
  p1 = new Player(200, 200, 100);
}

Player p;
Player p1;

void draw()
{
  background(0);
  p.update();
  p.render();
  p1.update();
  p1.render();
}
