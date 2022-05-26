//Breackout 
//Madelyn Chong
/////////// VIDEO 8K: work--》do score , and YOUWIN or YOULOSS WHAT score do you need to win to win

//brick Variables
int []x;
int []y;
boolean[]alive;
int brickd;
int n ;
int tempx, tempy;

//mode framework;
int mode;
final int INTRO =1;
final int GAME= 2;
final int  PAUSE =3 ;
final int GAMEOVER=4;

float px, py, pd, bx, by, bd, vx, vy;

//keyboard variables 
boolean rightkey, leftkey; 

void setup() {
  brickd = 20;
  n = 748 ;
  x = new int [n];
  y = new int [n];
  alive = new boolean[n];
  tempx =  60 ;      //where is going to be next brick
  tempy = 80;

  int i = 0 ;
  while ( i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 20;
    if ( tempx == width-60) {
      tempx = 60;
      tempy = tempy + 20;
    }
    i++;
  }
  size (800, 800); 
  mode= GAME;/////////////////-----------------------------------

  // initialize paddles
  px = width/2;
  py = height;
  pd=  100;
  vx = 0;
  vy = 1;
  leftkey = rightkey = false;
  
  //initialize ball
  bx = width/2;
  by= height-200;
  bd= 10;

  //initialize keyboard variables
  rightkey= leftkey = false;
}

void draw() {
  if ( mode== INTRO) {
    intro();
  } else if ( mode== GAME) {
    game();
  } else if (mode== PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else { 
    println( "Mode error in draw:" + mode);
  }
}
