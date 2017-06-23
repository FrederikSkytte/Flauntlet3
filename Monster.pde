class Monster {
  int posX = 0;
  int posY = 0;

  int health = 10;
  int durationOneFrame = 180;
  int frame = 0;
  int frameMax = 3;
  int ticksLast = millis();
  int radius = 15;

  int spawnPosition = 0;

  int xOffset = 2;
  int yOffset = 0;

  int offset = 10;
  //int moveDirection = 0;
  boolean isDead = false;

  PImage spriteSheet;

  Monster(int x, int y) {
    posX=x;
    posY=y;
  }

  //////////////////////////////WOLF////////////////////////////////////
  void displayMonster1(int offSetX, int offSetY) {

    spriteSheet =loadImage("wolf.png");

    PImage f = spriteSheet.get(xOffset + (frame * 80), yOffset, 70, 42); 
    image(f, posX + offSetX, posY + offSetY);
    int delta = millis() - ticksLast;
    if (delta >= durationOneFrame) {
      frame++;
      if (frame >= frameMax) { 
        frame = 0;
      }
      ticksLast += delta;
    }
  }
  void monsterAI() {

    if (posY> players[0].posY-offset-500 && posY< players[0].posY+offset+500) {

      if (posX< players[0].posX) {
        posX++;
        yOffset = 65;
      } else if (posX> players[0].posX && posX!= players[0].posX) {
        posX--;
        yOffset = 12;
      }
    }
    if (posX> players[0].posX-offset-400 && posX< players[0].posX+offset+400) {
      if (posY< players[0].posY) {
        posY++;
      } else if (posY> players[0].posY) {
        posY--;
      }
    }
    if (isDead == true) {
      xOffset = 242;
      frameMax = 1;
    }
  }
  ////////////////////////////COLLISIONDETECTION//////////////////////////////////////
  boolean collision(int collX, int collY, int rad) { // circle to circle collision
    float distance = sqrt(pow(collX-posX, 2)+(pow(collY-posY, 2)));

    if (distance<radius + rad)
    {
      return true;
    } else {
      return false;
    }
  } //collision end
}

//end MonsterAI

/*
  void displayMonster2() {
 spriteSheet =loadImage("catsprite.png");
 
 PImage f = spriteSheet.get(179 + (frame * 40), 280, 35, 33); 
 image(f, posX, posY);
 int delta = millis() - ticksLast;
 if (delta >= durationOneFrame) {
 frame++;
 if (frame >= frameMax) { 
 frame = 0;
 }
 ticksLast += delta;
 }
 }
 void displayMonster3() {
 spriteSheet =loadImage("catsprite.png");
 
 PImage f = spriteSheet.get(178 + (frame * 40), 215, 35, 21); 
 image(f, posX, posY);
 int delta = millis() - ticksLast;
 if (delta >= durationOneFrame) {
 frame++;
 if (frame >= frameMax) { 
 frame = 0;
 }
 ticksLast += delta;
 }
 }
 */