boolean projectDone = false;
boolean levelCompleted = false;

boolean GAMEOVER = false;

int currentLevel = 0;
int currentLife = 1000;

static final int W = 1;
static final int E = 2;
static final int T = 3;
static final int P = 4;


Player players[] = {
  new Player(50, 50), new Player(60, 60), new Player(70, 70)
};

Item life; 
Item treasure;

ArrayList<Weapon> shots;

//Weapon weapon1;
Monster monster1; 

LevelMap map = new LevelMap();
Level maze[] = {
  new Level(map.getLayout(100)), 
/*
new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0), 
 new Level(0, 0),
 */
};

int offSetX = 0;
int offSetY = 0;
int ticksLast = 0;
float delta = 0.0;

void setup() {
  size (500, 500);
  background(213, 204, 222);
  reset();
}

void draw() {
  ticksLast = millis();

  if (!GAMEOVER) {

    int cameraPosX = (players[0].posX+players[1].posX+players[2].posX)/3;
    int cameraPosY = (players[0].posY+players[1].posY+players[2].posY)/3;

    offSetX = width/2 - cameraPosX;
    offSetY = height/2 - cameraPosY;

    clear();
    fill(50, 50, 50);
    rect(0, 0, 500, 500);
    fill(150);
    collAction();
    displayStuff();
    monster1.monsterAI();
    updateShots();
  } else { 
    displayGameOver();
  }
  delta = millis()-ticksLast;
}//draw end

//_____________________Display Function____________________________
void displayStuff() {

  //******PLAYERS**********//
  players[0].displayPlayer1(offSetX, offSetY);
  players[1].displayPlayer2(offSetX, offSetY);
  players[2].displayPlayer3(offSetX, offSetY);


  for (int i = 0; i < shots.size(); ++i) {
    shots.get(i).displayWeapon(offSetX, offSetY);
  }

  //******LEVEL**********//
  for (int i = 0; i < maze.length; ++i) {
    maze[i].displayMaze(offSetX, offSetY);
    if (levelCompleted==true) {
      i++;
      levelCompleted=false;
    }
  }

  //******ITEMS**********//
  life.Life(offSetX, offSetY);
  treasure.Treasure(offSetX, offSetY);

  //******MONSTERS**********//
  monster1.displayMonster1(offSetX, offSetY);

  //******GAMEOVER**********//
  //player1.displayGameOver();
}//display end

//_____________________Player & Object reset____________________________
void reset() {
  players[0] = new Player(50, 50);
  players[1] = new Player(50, 60);
  players[2] = new Player(50, 70);

  monster1 = new Monster(300, 250);

  shots = new ArrayList<Weapon>();
  life = new Item(100, 100); //temoorary position
  treasure = new Item(200, 200);//temoorary position
}//reset end

//_____________________Collision Handling____________________________
void collAction() {
  PVector v;

  v = new PVector(10, 10);
  for (int x = 0; x<maze[0].walls.size(); x++) {

    int wallCenterX, wallCenterY;
    wallCenterX = maze[0].walls.get(x).posX + (Player.tileSize/2);
    wallCenterY = maze[0].walls.get(x).posY + (Player.tileSize/2);

    //Insert action that happens if collision returns true for the player
    for (int i = 0; i < players.length; ++i) {

      int playerCenterX, playerCenterY;
      playerCenterX = players[i].posX + (Player.tileSize/2);
      playerCenterY = players[i].posY + (Player.tileSize/2);

      if (maze[0].walls.get(x).collision(players[i])) {

        float vx, vy;
        vx = playerCenterX - wallCenterX;
        vy = playerCenterY - wallCenterY;
        v.x = vx;
        v.y = vy;
        float vLength = v.mag();
        float playerWallDiff; 
        playerWallDiff = Player.tileSize - vLength;
        v.normalize();
        v.mult(playerWallDiff + 5);

        players[i].posX += v.x;
        players[i].posY += v.y;
      } // if statement end
    } // player for loop end

    for (int i = 0; i < maze[0].walls.size(); ++i) {
      float monsterCenterX, monsterCenterY;
      monsterCenterX = monster1.posX + (70*0.5);
      monsterCenterY = monster1.posY + (42*0.5);

      if (maze[0].walls.get(x).collMonster(monster1)) {
        float mvx, mvy;
        mvx = monsterCenterX - wallCenterX;
        mvy = monsterCenterY - wallCenterY;
        v.x = mvx;
        v.y = mvy;
        float vLength = v.mag();
        float monsterWallDiff;
        monsterWallDiff = Player.tileSize - vLength;
        v.normalize();
        v.mult(monsterWallDiff + 5);

        monster1.posX += v.x;
        monster1.posY += v.y;

        println("monster hit the wall");
      }
    } // monsters for loop end
  } // Maze for loop end
  /*

   
   float monsterCenterX, monsterCenterY;
   monsterCenterX = monster1.posX + (70*0.5);
   monsterCenterY = monster1.posY + (42*0.5);
   
  /* if (maze[0].walls.get(x).collMonster(monster1)) {
   vx = monsterCenterX - wallCenterX;
   vy = monsterCenterY - wallCenterY;
   
   println("monster hit the wall");
   }*/
}
// }  for loop end
/*
>>>>>>> origin/master
 players[0].collision(players[0].posX, players[0].posY, 20);
 
 monster1.collision(monster1.posX, monster1.posY, 30);*/
//}


//_____________________Movement____________________________
void keyReleased() {
  //player 1

  if (keyCode == LEFT) {
    players[0].frameMax = 8;
    players[0].yOffset = 250;
    players[0].keyLeft = false;
  }
  if (keyCode == RIGHT) {
    players[0].frameMax = 8;
    players[0].yOffset = 2;
    players[0].keyRight = false;
  }
  if (keyCode == DOWN) {
    players[0].frameMax = 1;
    players[0].yOffset = 80;
    players[0].keyDown = false;
  }
  if (keyCode == UP) {
    players[0].frameMax = 1;
    players[0].yOffset = 40;
    players[0].keyUp = false;
  }

  //player2
  if (key == 'a' || key == 'A') {
    players[1].frameMax = 8;
    players[1].yOffset = 250;
    players[1].keyLeft = false;
  }
  if (key == 'd' || key == 'D' ) {
    players[1].frameMax = 8;
    players[1].yOffset = 2;
    players[1].keyRight = false;
  }
  if (key == 's' || key == 'S') {
    players[1].frameMax = 1;
    players[1].yOffset = 80;
    players[1].keyDown = false;
  }
  if (key == 'w' || key == 'W') {
    players[1].frameMax = 1;
    players[1].yOffset = 40;
    players[1].keyUp = false;
  }
  //player3
  if (key == 'j' || key == 'J') {
    players[2].frameMax = 8;
    players[2].yOffset = 250;
    players[2].keyLeft = false;
  }
  if (key == 'l' || key == 'L' ) {
    players[2].frameMax = 8;
    players[2].yOffset = 2;
    players[2].keyRight = false;
  }
  if (key == 'k' || key == 'K' ) {
    players[2].frameMax = 1;
    players[2].yOffset = 80;
    players[2].keyDown = false;
  }
  if (key == 'i' || key == 'I' ) {
    players[2].frameMax = 1;
    players[2].yOffset = 40;
    players[2].keyUp = false;
  }
} //keyReleased end

void keyPressed() {
  if (keyCode == ENTER) {
    if (GAMEOVER) {
      GAMEOVER = false;
      reset();
    }
  }
  //player 1
  if (keyCode == LEFT) {
    players[0].keyLeft = true;
  }
  if (keyCode == RIGHT) {
    players[0].keyRight = true;
  }
  if (keyCode == DOWN) {
    players[0].keyDown = true;
  }
  if (keyCode == UP) {
    players[0].keyUp = true;
  }
  if (keyCode == SHIFT) {
    int x =  players[0].posX;
    int y =  players[0].posY;
    int[] dir =  players[0].direction;
    shots.add(new Weapon(x, y, dir[0], dir[1]));
  }
  //player 2
  if (key == 'a' || key == 'A') {
    players[1].keyLeft = true;
  }
  if (key == 'd' || key == 'D' ) {
    players[1].keyRight = true;
  }
  if (key == 's' || key == 'S') {
    players[1].keyDown = true;
  }
  if (key == 'w' || key == 'W') {
    players[1].keyUp = true;
  }
  if (key == 'e') {
    int x =  players[1].posX;
    int y =  players[1].posY;
    int[] dir =  players[1].direction;
    shots.add(new Weapon(x, y, dir[0], dir[1]));
    println("PHAW PHAW");
  }
  //player 3
  
  if (key == 'j' || key == 'J') {
    players[2].keyLeft = true;
  }
  if (key == 'l' || key == 'L' ) {
    players[2].keyRight = true;
  }
  if (key == 'k' || key == 'K' ) {
    players[2].keyDown = true;
  }
  if (key == 'i' || key == 'I' ) {
    players[2].keyUp = true;
  }
  if (key == 'o') {
    int x =  players[2].posX;
    int y =  players[2].posY;
    int[] dir =  players[2].direction;
    shots.add(new Weapon(x, y, dir[0], dir[1]));
    println("PHEW PHEW");
  }
}



//////////////////////////////UpdateShots////////////////////////////////////
void updateShots() {

  for (int i = 0; i < shots.size(); i ++) {
    shots.get(i).lifeSpan -= delta/1000;

    if (shots.get(i).lifeSpan<=0) {
      shots.remove(i);
    }
  }
}

//////////////////////////////GAMEOVER//////////////////////////////////// 

void displayGameOver() {
  fill(0); //find RainbowColor
  textSize(72);
  textAlign(CENTER);
  text("GAME OVER", height*0.5, width*0.5);
}