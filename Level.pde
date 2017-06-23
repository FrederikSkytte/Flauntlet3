class Level {
  int posX;
  int posY;
  int w;
  int h;
  ArrayList<Walls> walls = new ArrayList<Walls>();

  Level(int[][] Map) {
    for (int y=0; y<Map.length; y++) {
      for (int x = 0; x < Map[y].length; x++) {

        switch(Map[y][x]) {

        case W: //Spawning Walls
          Walls wall = new Walls();
          walls.add(new Walls(x*Player.tileSize, y*Player.tileSize));
          break;

          /*case E : //Spawning Enemies
           new Enemies(x*Player.tileSize, y*Player.tileSize);
           break;
           
           case T : //Spawning Treasure
           new Treasure(x*Player.tileSize, y*Player.tileSize);  
           break;
           
           case P : //Spawning Portal
           new Portal(x*Player.tileSize, y*Player.tileSize);
           break;*/

        case 0 :
          continue;
        } //switch end
      } //for loop (x) end
    } //for loop (y) end
  }

  void displayMaze(int offSetX, int offSetY) {
    for (int i = 0; i<walls.size();i++) {
      walls.get(i).display(offSetX,offSetY);
    }
  }


  void collision (Player bob) {
    if (bob.posX + bob.w>= posX + w) {
      bob.posX=bob.posX-1;
    }
    if (bob.posX <= posX) {
      bob.posX = bob.posX+1;
    }
    if (bob.posY  + bob.h <= posY + h) {
      bob.posY=bob.posY-1;
    }
    if (bob.posY<= posY) {
      bob.posY=bob.posY+1;
    }
  }// collision end
} // end of class