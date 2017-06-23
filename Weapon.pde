class Weapon {

  boolean shoot = false;
  int spawnX = 0;
  int spawnY = 0;
  int speed = 5;

  int damage = 5;
  PImage spriteSheet;
  int [] dir = new int [2];

  Weapon(int x, int y, int dX, int dY) {
    spawnX=x;
    spawnY=y;
    dir[0] = dX;
    dir[1] = dY;
  }
  void displayWeapon(int offSetX, int offSetY) {

    // Flytte skud med acceleration i retning
    // Display Skud
    spawnX += dir[0]*speed;
    spawnY += dir[1]*speed;

    spriteSheet =loadImage("catsprite.png");
    PImage f = spriteSheet.get(52, 214, 10, 10); 
    image(f, spawnX + offSetX, spawnY + offSetY);
  }
}

/*
  void weaponAI() {
 
 if (players[0].keyUp==true && shoot==true) {
 displayWeapon();
 spawnY--;
 }
 if (players[0].keyDown==true && shoot==true) {
 displayWeapon();
 spawnY++;
 }
 if (players[0].keyRight==true && shoot==true) {
 displayWeapon();
 spawnX++;
 }
 if (players[0].keyLeft==true && shoot==true) {
 displayWeapon();
 spawnX--;
 }
 }
 */
//}