boolean projectDone = false;
boolean levelCompleted = false;
boolean hasStarted = false;
boolean GAMEOVER = false;


int currentLevel = 0;

static final int W = 1;
static final int E = 2;
static final int T = 3;
static final int P = 4;


Player players[] = {
  new Player(50, 50), 
  new Player(60, 60), 
  new Player(70, 70)

};

Item life;
Item treasure;

ArrayList<Weapon> shots;

//Weapon weapon1;
Monster monster1; 
Monster monster2;

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

void setup() {
  size (500, 500);
  background(213, 204, 222);
  reset();
}

void draw() {
  int cameraPosX = (players[0].posX+players[1].posX+players[2].posX)/3;
  int cameraPosY = (players[0].posY+players[1].posY+players[2].posY)/3;

  offSetX = width/2 - cameraPosX;
  offSetY = height/2 - cameraPosY;

  clear();

  fill(255.0, 255.0, 255.0);

  rect(0, 0, 500, 500);
  fill(150);
  collAction();
  displayStuff();

  monster1.monsterAI();
  //weapon1.weaponAI();
}//draw end

//_____________________Display Function____________________________
void displayStuff() {

  //******PLAYERS**********//
  players[0].displayPlayer1(offSetX, offSetY);
  players[1].displayPlayer2(offSetX, offSetY);
  players[2].displayPlayer3(offSetX, offSetY);


  //monster1.displayMonster1();
  // monster2.displayMonster2();

  for (int i = 0; i < shots.size(); ++i) {
    shots.get(i).displayWeapon();
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
  life.Life();
  treasure.Treasure();

  //******MONSTERS**********//
  monster1.displayMonster1(offSetX,offSetY);

  //******GAMEOVER**********//
  //player1.displayGameOver();
}//display end

//_____________________Player & Object reset____________________________
void reset() {
  players[0] = new Player(50, 50);
  players[1] = new Player(50, 60);
  players[2] = new Player(50, 70);
  //weapon1 = new Weapon(players[0].posX, players[0].posY);
  monster1 = new Monster(300, 250);
  monster2 = new Monster (350, 250);
  shots = new ArrayList<Weapon>();
  life = new Item(100, 100); //temoorary position
  treasure = new Item(200, 200);//temoorary position
}//reset end

//_____________________Action on Collision____________________________
void collAction() {
  for (int x = 0; x<maze[0].walls.size(); x++) {


    if (maze[0].walls.get(x).collision(players[0])) {
      //Insert action that happens if collision returns true for the player
      println("wall is here");
    } // if statement end
      if (maze[0].walls.get(x).collMonster(monster1)) {
   println("monster hit the wall");
   }
   
  } // for loop end
  
 


  players[0].collision(players[0].posX, players[0].posY, 20);
  monster1.collision(monster1.posX, monster1.posY, 30);
}


//_____________________Movement____________________________
void keyPressed() {
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
  //weapon1.weaponAI();
}

//player 2
//player 3


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
} //keyReleased end

//////////////////////////////GAMEOVER////////////////////////////////////

void gameOver() {

  if (GAMEOVER == true) {
    players[0].displayGameOver();
  }
}