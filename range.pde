class Range
{
  int x, y, sizeX, sizeY, fill;
  
  Range(int xL, int yL,int  sX ,int sY)
  {
    
    x = xL;
    y = yL;
    sizeX = sX;
    sizeY = sY;
    
  }
  
  void draw(int x, int y)
  {
    this.x = x;
    this.y = y;
    
    if(fill == 0)
    {
      noFill();
    }
    else
      fill(0, 255, 128);
    
    if (debug)
    {
      stroke(0, 255, 128);
      rect(x, y, sizeX, sizeY);
    }
  }
  
  
  void draw()
  {
    stroke(0, 255, 128);
    rect(x, y, sizeX, sizeY);
  }
}
