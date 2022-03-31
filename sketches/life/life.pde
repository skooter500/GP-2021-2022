void setup()
{
  size(500, 500);
  
  board = new boolean[size][size];
  cellSize = width / (float) size;
  randomise();
  println(countLiveCellsAround(1, 2));
}

boolean isAlive(int row, int col)
{
  if (row >= 0 && row < size && col >= 0 && col < size)
  {
    return board[row][col];
  }
  else
  {
    return false;
  }
}

void update()
{
  // Rules
  // Alive: 2-3 - Survives, otherwise dies
  // Dead: 3 - Comes to life otherwise stays dead
  
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
    }
  }
  
  
}


int countLiveCellsAround(int row, int col)
{
  int count = 0;
  for(int r = row -1; r <= row+1; r++)
  {
    for(int c = col - 1; c <= col + 1 ; c ++)
    {
      if (! (c == col && r == row))
      {
        if (isAlive(r, c))
        {
          count ++;
        }
      }
    }
  }
  
  return count;
}

void drawBoard()
{
  background(0);
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
      if (board[row][col])
      {
        fill(0, 255, 0);
      }
      else
      {
        noFill();
      }
      float x = map(col, 0, size, 0, width);
      float y = map(row, 0, size, 0, height);
      rect(x, y, cellSize, cellSize);
      
      
    }
  }
}

void randomise()
{
  for(int row = 0 ; row < size ; row ++)
  {
    for(int col = 0 ; col < size ; col ++)
    {
      float dice = random(1.0f);
      if (dice < 0.5f)
      {
        board[row][col] = true;
      }
      else
      {
        board[row][col] = false;
      }
    }
  }
}

boolean[][] board;
boolean[][] next;
int size = 100;
float cellSize;

void draw()
{
  drawBoard();
}
