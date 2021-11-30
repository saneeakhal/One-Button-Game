Class Screens;

void initScreen(){
  image(start, width/2, height/2);
  if(mousePressed){
    image(startclicked, width/2, height/2);
    gameScreen = 1;
  }
}

void gameScreen() {
  image(moleCurrent, position.x, position.y, 128, 128);
  mousePressed();
}

void gameover(){
  image(score, width/2, height/2);
  textAlign(CENTER);
  fill(255, 255, 255);
  textSize(80);
  text(points, width/2, 400);
}
