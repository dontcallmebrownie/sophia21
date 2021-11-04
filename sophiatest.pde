Player sophia = new Player();
Room bedroom = new Room(0, true, "door1", "./rsc/img/env/DOOR_OPEN.png", "./rsc/img/env/doorClosed.png", 1, 1000, 1300 );

Room kitchen = new Room(1, true, "./rsc/img/env/KDOOR_OPEN.png", "./rsc/img/env/kDoorClosed.png", 0, -165, -60);



void setup()
{
  size(1246, 720);
  sophia.spriteF = loadImage("./rsc/img/player/sophie.png");
  sophia.spriteB = loadImage("./rsc/img/player/sophieb.png");
  sophia.current = sophia.spriteF;
  
  bedroom.env = loadImage("./rsc/img/env/bedroom.png");
  bedroom.setup();
  
  kitchen.env = loadImage("./rsc/img/env/kitchen.png");
  kitchen.setup();
}

void draw()
{
  

  switch(sophia.room)
  {
    case 0:
      bedroom.draw(sophia);
      break;
    case 1:
      kitchen.draw(sophia);
      break;
  }
  
  
  sophia.move();
  sophia.draw();
}
