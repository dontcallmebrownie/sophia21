class Range
{
  int x, y, sizeX, sizeY;
  
  Range(int xL, int yL,int  sX ,int sY)
  {
    sizeX = sX;
    sizeY = sY;
    x = xL;
    y = yL;
  }
  
  void draw(int x, int y)
  {
    stroke(0, 255, 128);
    noFill();
    rect(x, y, sizeX, sizeY);
  }
  void draw()
  {
    stroke(0, 255, 128);
    noFill();
    rect(x, y, sizeX, sizeY);
  }
  
  void updateSize(int x, int y)
  {
    sizeX = x;
    sizeY = y;
  }
  
}
