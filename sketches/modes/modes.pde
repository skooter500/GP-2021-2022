void setup()
{
  size(500, 500);
}

int mode = 0;

void keyPressed()
{
  if (key >= '0' && key <= '9')
  {
    mode = key - '0';
  }
}

void screen1()
{
  background(0);
}

void screen2()
{
  background(0, 0, 255);
}

void draw()
{
  switch (mode)
  {
    case 0:
    {
      screen1();
    }
    break;
    case 1:
    {
      screen2();
    }
    break;
    case 2:
    {
      background(0, 255, 255);
    }
    break;
  }
}
