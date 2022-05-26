void intro(){
  background(0);
  fill(#FFB950);
  textAlign(CENTER,CENTER);
  textSize(100);
  text("BreackOUT", 400,400);
  
  rect(300,550,200,200);
}

void introClicks(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 750){
    mode = GAME;
  }
}
