void setup()
{
  size(500, 500);
  
  x = 10; // Assignment
  x = x + 1; // Increment
  x ++; // Increment Adds 1 to x
  x += 10; // Adds 10 to x
  
  x --; // Subtracts 1 from x
  x -= 5; // Subtract 5 from x;
  
  x = x * 2; // Multiply x by 2
  x *= 5; // Multiply x by 5;
  
  x /= 3; // Divides x by 3
  x = x / 4; // Divide x by 4
  
  float x1 = 100;
  float x2 = 50;
  
  x1 += 20;
  x1 = x2 * 2;
  x1 ++;
  x1 ++;
  x1 -= 10;
  x1 -= x2;
  
  x1 --;
  
  x1 *= 1.5f;
  
  x2 -= 50;
  
  println(x1);
  println(x2);
  
}

float x = 0; 
int xx = 0;
char c = 'h';
boolean b = false;
String s = "Bryan";

void draw()
{
  background(0);
  noStroke();
  fill(0, 0, 255);
  circle(x, height / 2, 50);
  x = x + 1;
}
