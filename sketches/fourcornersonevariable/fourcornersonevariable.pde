void setup()
{
  size(500, 500);
}

float  x = 0;

void draw()
{
    background(0);
    noStroke();
    fill(0, 0, 255);
    circle(250 + x, 250 + x, 50);
    x ++;
    
    fill(255, 0, 0);
    circle(250 + x , 250 - x, 50);
    
    fill(255, 255, 0);
    circle(250 - x, 250 + x, 50);
    
    
    fill(255, 0, 255);
    circle(250 - x, 250 - x, 50);

}
