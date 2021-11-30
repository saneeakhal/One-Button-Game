PVector position, target;
PImage feild, mole, molehit, moleCurrent, start, startclicked, score, hammer, whackhammer;
PFont font;
boolean isPressed;
int gameScreen = 0;
int points = 0;
int time = millis();

void setup() { 
  size(800, 600, P2D);
  font = createFont("Rockwell Condensed", 40, true);
  textFont(font);
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));  
  
   feild = loadImage ("feild.jpg");
   hammer = loadImage ("hammer.png");
   whackhammer = loadImage("whackhammer.png");
   
  mole = loadImage ("mole.png");
  molehit = loadImage("molehit.png");
  
  start = loadImage("start.jpg");
  startclicked = loadImage("startclicked.jpg");
  score = loadImage("score.jpg");
  imageMode(CENTER);
  
  moleCurrent = mole;
}

void draw() {
  background (feild);
  textFont(font, 48);
  textSize(50);
  text(+ points, 720, 580); //adding points
  
  if(gameScreen == 0) {
 initScreen(); 
}else if(gameScreen == 1){
 gameScreen(); 
} else if (gameScreen == 2){
  gameover();
}//switching games screens
  
  if (gameScreen == 1) {
    textSize(48);
    fill(255, 255, 255);
    text("How many moles can you whack?", 70, 90);
    position = position.lerp(target, 0.13);
    if (position.dist(target) < 1) {
      target = new PVector(random(width), random(height));  
    }
  }
  if (mouseButton == LEFT) { 
      image (whackhammer, mouseX, mouseY, 128, 128);
      noCursor();
  } else {
    image (hammer, mouseX, mouseY, 128, 128);
    noCursor();
  }

  moleCurrent = mole;
if(millis() > time + 20000){
  gameScreen = 2;
}
}
