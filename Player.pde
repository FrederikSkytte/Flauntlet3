public class Player {
  int posX = 0;
  int posY = 0;

  int playerSpeed = 5;

  static final int tileSize = 40;
  int h = 10;
  int w = 10;

  boolean keyUp = false;
  boolean keyDown = false;
  boolean keyLeft = false;
  boolean keyRight = false;

  boolean isDead = false;
  int health = 500;

  int durationOneFrame = 180;
  int frame = 0;
  int frameMax = 0;
  int ticksLast = millis();
  int radius = 15;
  int score = 0;

  int yOffset = 0;
  int[] direction = {0, -1};

  PImage spriteSheet;

  Player(int x, int y) {

    posX = x;
    posY = y;
  }
  void displayPlayer1(int offSetX, int offSetY) {

    spriteSheet =loadImage("catsprite.png");
    //frameRate(100);
    PImage f = spriteSheet.get(2 + (frame * 36), yOffset, 36, 42);
    image(f, posX + offSetX, posY + offSetY);//position of the sprite
    int delta = millis() - ticksLast;
    if (delta >= durationOneFrame) {
      frame++;
      if (frame >= frameMax) { 
        frame = 0;
      }
      ticksLast += delta;
    }
    isMoving();
  }

  void displayPlayer2(int offSetX, int offSetY) {
    spriteSheet =loadImage("catsprite.png");

    PImage f = spriteSheet.get(5 + (frame * 33), yOffset, 25, 27); 
    image(f, posX + offSetX, posY + offSetY);//position of the sprite
    int delta = millis() - ticksLast;
    if (delta >= durationOneFrame) {
      frame++;
      if (frame >= frameMax) { 
        frame = 0;
      }
      ticksLast += delta;
    }
    isMoving();
  }
  void displayPlayer3(int offSetX, int offSetY) {
    spriteSheet =loadImage("catsprite.png");

    PImage f = spriteSheet.get(5 + (frame * 33), yOffset, 25, 27); 
    image(f, posX + offSetX, posY + offSetY);//position of the sprite
    int delta = millis() - ticksLast;
    if (delta >= durationOneFrame) {
      frame++;
      if (frame >= frameMax) { 
        frame = 0;
      }
      ticksLast += delta;
    }
    isMoving();
  }
  /////////////////////////////COLLISION DETECTION/////////////////////////////////////

  boolean collision(int collX, int collY, int rad) { // circle to circle collision
    float distance = sqrt(pow(collX-posX, 2)+(pow(collY-posY, 2)));

    if (distance<radius + rad)
    {
      return true;
    } else {
      return false;
    }
  } //collision end
  //////////////////////////////MOVEMENT////////////////////////////////////////

  void isMoving() {

    if (keyLeft == true) {    
      frameMax = 6;
      posX --;
      yOffset = 122;
      direction[0] = -1;
      direction[1] = 0;
    }
    if (keyRight == true) {
      frameMax = 6;
      posX ++;
      yOffset = 164;
      direction[0] = 1;
      direction[1] = 0;
    }
    if (keyUp == true) {
      frameMax = 4;
      posY --;
      yOffset = 40;
      direction[0] = 0;
      direction[1] = -1;
    }
    if (keyDown == true) {
      frameMax = 4;
      posY ++;
      yOffset = 80;
      direction[0] = 0;
      direction[1] = 1;
    }
  }
  ///////////////////////////// Game Over Function/////////////////////////////////////  

  void displayGameOver() {
    fill(0); //find RainbowColor
    textSize(72);
    textAlign(CENTER);
    text("GAME OVER", height*0.5, width*0.5);
  }
}