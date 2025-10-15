class Door
{
  PImage closed;
  PImage opened;
  PImage current;
  boolean needsKey;
  boolean locked;
  String keyID;
  int leadsTo;
  int xBegin, xEnd;
  int doorID;
  int lr;
  int temp;
  int flip = 0;
  
  Range collider = new Range(1000, 10, 200, 500);
  Range trigger = new Range(1200, 10, 100, 500);

  
  Door(boolean nkey, boolean lock, int dID)
  {
    needsKey = nkey;
    locked = lock;
    doorID = dID;
  }


  void setup()
  {
    
  }
  
  
  void draw(Player player)
  {   
      
    current = closed;
   
   if(locked)
   {
     current = closed;
   }
   
   if((player.collider.x + 50 >= collider.x) && player.collider.x - 100 <= collider.x + 100 ) //<>//
   { //<>//
     if (player.room == doorID)
     {
       println("Collision");
       current = opened;
     }
     else 
       current = closed;
   }
   else
     current = closed;
     
    image(current, 0, 0);
    collider.draw(xBegin, 10);
    if (lr == 0)
    {
      trigger.draw(xEnd - 100, 10);
    }
    else
      trigger.draw(xBegin, 10);
    
    collider.sizeX = xEnd - xBegin;
    collider.x = xBegin;

  }
  
  
  
  
  void doorStatus (Player player)
  {
    if(player.hasKey && player.keyID == keyID)
    {
       locked = false;
    }
    if((current == opened) && (player.room == doorID))
    {
      if ( player.collider.x + 50 >= trigger.x && player.collider.x <= trigger.x + 50)
      {
        println("Door triggered");
        trigger.fill = 1;

        player.moveTo(leadsTo);
      }
    }
    else 
      trigger.fill = 0;
  }

}
