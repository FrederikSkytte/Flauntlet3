// W = wall
// 0 = path
// E = enemy
// T = treasure
// P = portal

//_____________________Levels Generated through 2D Arrays____________________________

class LevelMap {
  int[][] getLayout(int lvl)
  {
    int[][] temp = new int[0][0];
    switch(lvl)
    {
    case 100: //_____________________Level 1____________________________
      temp = new int[][]{
        {W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, P, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W}, 
        {W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, W, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, W}, 
        {W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W, W}, 

      };
      break;
   /* case 2: //_____________________Level 2____________________________
      return new int [][]{
        {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W},
        {W,0,0,0,0,W,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W}
        {W,0,0,0,0,W,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W}
        {W,0,0,0,0,W,0,0,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,0,0,W}
        {W,0,0,0,0,W,0,0,W,0,0,0,0,0,0,0,0,0,W,0,0,0,W,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W,0,0,W}
        {W,0,0,0,0,W,0,0,W,0,0,0,0,W,W,W,W,0,W,0,W,0,W,T,W,T,W,T,W,E,E,W,T,W,E,W,T,W,E,W,0,W,0,0,W}
        {W,0,0,0,0,W,0,0,W,0,0,W,W,0,0,0,W,0,W,0,W,0,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,0,W,0,0,W}
        {W,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W,0,0,0,W,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,W,0,0,W}
        {W,W,W,W,W,W,W,W,W,W,W,W,W,W,0,0,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,0,0,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,0,0,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,0,0,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W}
        {W,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W}
        {W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W,W}
      };
      break;
      
    case 3: //_____________________Level 3____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 4: //_____________________Level 4____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 5: //_____________________Level 5____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 6: //_____________________Level 6____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 7: //_____________________Level 7____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 8: //_____________________Level 8____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 9: //_____________________Level 9____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 10: //_____________________Level 10____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 11: //_____________________Level 11____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 12: //_____________________Level 12____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 13: //_____________________Level 13____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 14: //_____________________Level 14____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 15: //_____________________Level 15____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;
    case 16: //_____________________Level 16____________________________
      return new int [][]{
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
        {,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, }
      };
      break;*/
    }
    return temp;
  }
}