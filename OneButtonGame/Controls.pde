Class Controls;

void mousePressed(){
 if((dist(mouseX, mouseY, position.x, position.y) < 25) && (mouseButton == LEFT)){
  moleCurrent = molehit;
  points = points + 1;
 }
}

//reference
//https://discourse.processing.org/t/how-to-click-on-a-moving-ellipse/20864/5
//https://www.youtube.com/watch?v=cFT3-SG6fSg
