class Room 
{

boolean hasDoor;
boolean init = true;
PImage env, blank, current;
String open, closed;
String keyID;
int nextRoom;
int dXB, dXE;
int roomID;

Door exit = new Door(true, true, roomID);

  Room(int ID, Boolean hD, String o, String c, int nR, int doorB, int doorE)
  {
    hasDoor = hD;
    open = o;
    closed = c;
    exit.leadsTo = nR;
    exit.needsKey = false;
    exit.locked = false;
    exit.xBegin = doorB;
    exit.xEnd = doorE;
    exit.doorID = ID;
    roomID = ID;
  }

  Room(int ID, boolean hD, String kID, String o, String c, int nR, int doorB, int doorE)
  {
    hasDoor = hD;
    open = o;
    closed = c;
    exit.keyID = kID;
    exit.leadsTo = nR;
    
    exit.xBegin = doorB; //<>//
    
    exit.xEnd = doorE;
    roomID = ID;
  }

  void setup()
  {
    exit.open = loadImage(open); //<>//
    exit.closed = loadImage(closed);
    blank = loadImage("./rsc/img/env/blank.png");
  }


  void draw(Player player) 
  {    
    
    if (init)
    {
      init = false;
      return;
    }
    
    if (exit.current != exit.closed)
    {
      current = blank;
    }
    else
      current = env;
      
      image(current, 0, 0);
      
    if(hasDoor)
    {
      exit.doorStatus(player);
      exit.draw(player);
    }
  }    
}
