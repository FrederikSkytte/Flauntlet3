class Item {

  int Treasure;
  int Life;
  int Portal;
  int Enemy;

  int posX = 0;
  int posY = 0;

  int durationOneFrame = 100; //in milliseconds int frame = 0;
  int frameMax = 4;
  int frame = 0;
  int ticksLast = millis();
  PImage spriteSheet;

  Item(int x, int y) {
    posX=x;
    posY=y;
  }

  void Treasure(int offSetX, int offSetY) {

    spriteSheet =loadImage("fish.png");
    PImage f = spriteSheet.get(1 + (frame * 44), 2, 44, 40); 
    image(f, posX + offSetX, posY + offSetY);
    int delta = millis() - ticksLast;
    if (delta >= durationOneFrame) {
      frame++;
      if (frame >= frameMax) { 
        frame = 0;
      }
      //ticksLast = millis(); //adds up time overshooting error
      ticksLast += delta; //avoids adding up error
    }
  }
  void Life(int offSetX, int offSetY) {
    spriteSheet =loadImage("fish.png");
    PImage f = spriteSheet.get(1 + (frame * 44), 50, 44, 40); 
    image(f, posX + offSetX, posY + offSetY);
    int delta = millis() - ticksLast;
    if (delta >= durationOneFrame) {
      frame++;
      if (frame >= frameMax) { 
        frame = 0;
      }
      //ticksLast = millis(); //adds up time overshooting error
      ticksLast += delta; //avoids adding up error
    }
  }
}