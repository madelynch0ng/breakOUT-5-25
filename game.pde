void game() {
  background(0);

  // paddle======================================= 
  fill(255);
  circle(px, py, pd);
  if (rightkey) px = px +5;
  if (leftkey) px = px -5;



  if (px <= 50 || px >= 750) {//??????????????????????QUESTION 5/ 25
    rightkey = false;
    leftkey= false;
    px = max(pd, 750);
    px = min(pd, 50);
  }

  //ball===========================================================
  fill(255, 0, 255);
  circle ( bx, by, bd );
  bx = bx + vx ;
  by = by + vy ;

  //bouncing 
  if (dist ( bx, by, px, py ) < bd /2 + pd /2) { // bouncing of the sides
    vx = ( bx - px ) / 10 ;
    vy = ( by - py ) / 10 ;
  }
  if ( bx < bd /2 || bx > width- bd /2) { // bouncing off the sides
    vx = vx * -1;
  }
  if ( by < bd /2 || by > height - bd /2) {// bouncing off the top
    vy = vy * -1;
  }


  //bricks=============================================================================t
  int i = 0;
  while (i <  n ) {
    if (alive[i]==true) {
      manageBrick(i);
    }
    i++;
  }
}

void gameClicks() {
}


void manageBrick(int i) {

  //if ( y[i]==100) fill (0);
  //if ( y[i]==200) fill (255);
  square(x[i], y[i], brickd);               // key: draw the brick on page i insteads of 0
  if ( dist ( bx, by, x[i], y [i]) < bd/2 + brickd/2 ) {
    vx = ( bx - x [i] ) / 10 ;
    vy = ( by - y [i] ) / 10 ;
    alive[i] = false;
  }
}
