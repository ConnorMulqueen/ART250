class Snake {
  int x = 500;
  int y = 500;
  int size = 50;
  int xAcceleration = 1;
  int yAcceleration = 1;
  boolean lastPressedX = false;
  boolean boxAvailable = false;
  snakeBox sB = new snakeBox();
  int framez;
  void setup(){
    frameRate(60);
  }
  
  void draw(){
    this.keyPressed();
    background(0,0,0);
    x = lastPressedX ? x+xAcceleration: x;
    y = !lastPressedX ? y+yAcceleration: y;
    text(" GAME OVER",x,y); 
    text("INSERT COIN", x,y+50);
    text("^",64,53);
    text("|",66,60);
    text("<- ->",50,75);
  }
  void keyPressed() {
  if(keyCode == LEFT) {
    xAcceleration = -5;
    lastPressedX = true;
  }
  if(keyCode == RIGHT) {
    xAcceleration = 5;
    lastPressedX = true;
  }
  if(keyCode == UP) {
    yAcceleration = -5;
    lastPressedX = false;
  }
  if(keyCode == DOWN) {
    yAcceleration = 5;
    lastPressedX = false;
  }
  }
}