void setup()
{
  size(500, 500);
  p = new Player(width / 2, height / 2, 50);
  p1 = new Player(200, 200, 100);
  h = new Health(50, 50);
}

Player p;
Player p1;
Health h;

void draw()
{
  background(0);
  p.update();
  p.render();
  p1.update();
  p1.render();
  h.update();
  h.render();
}
