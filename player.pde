class Player 
{

PImage spriteF;
PImage spriteB;
PImage current;

boolean init = true;


// convert to inv system
boolean hasKey = true;
String keyID = "door1";

int sizeX = 100, sizeY = 425;
int room = 0;

int x = 0, y = 90;
int speed = 10;

Range collider ;//= new Range(0, 0, 100, 425); Why did I do comment this out?


  void setup()
  {
    collider = new Range(0, 0, 100, 425);
  }
  
  void draw() 
  {
    if (init) //<>//
    {
      this.setup();
      init = false;
    }
    
    
    image(current, x, y);
    collider.draw(x, y);
    
    if (!keyPressed)
    {
      collider.fill = 0;
    }

  }

  void move()
  {
    if (keyPressed)
    {
      switch(key)
      {
        case ('a'):
         if(canMove())
           {
             x -= speed;
             current = spriteB;
           }
          break;
        case 'd':
         if(canMove())
           {
             x += speed;
             current = spriteF;
           }
          break;
        case 'e':
          collider.fill = 1;          
          break;
        case 's':
           break; 
        case 'r':
        // reset();
          break;       
    }
        
     collider.x = x;
    // delay(10);
    
    print("X: ");
    print(x);
    print(" Y: ");
    print(y);
    print(" rID: ");
    print("Collider X: ");
    print(collider.x);
    print(" rID: ");
    println(room);
    }
  }

  boolean canMove()
  {
    boolean canMove;
  
    if (x >= width - 90 )
    {
      canMove = false;
      x -= 10;
    }
    else if(x < 0)
    {
      canMove = false;
      x += 10; 
    }
    else
    {
      canMove = true;
    }
  
    return canMove;
  }

  void moveTo(int r)
  {
    
    switch(r)
    {
      case 0:
        x = 899;
        break;
      case 1:
        x = 200;
        break;
    }
    delay(100);
    room = r;
  }
}
