int x= 320;
int y = 240;

int moveX;
int moveY = 450;
int moveY2 = 450;
int accelerationX = 5;
int accelerationY = 5;
int scoreP1 = 0;
int scoreP2 = 0;
Transition1 t1 = new Transition1();
spaceInvaders spaceInvade = new spaceInvaders();
//TODO: make Snake?
void setup(){
  frameRate(60);
  size(1280,720);
}
void draw(){
  if (scoreP1 <= 0 && scoreP2 <= 0) {
  fill(0,25,0);
  background(125,25,0);
  text("Player 1 score: " + scoreP1 , 150, 60); 
  text("Player 2 score: " + scoreP2, 900,60);
  rect(50,moveY,50,100);
  rect(1200,moveY2,50,100);
  rect(x,y,25,25);
  x += accelerationX;
  y += accelerationY;
  if (x == 0) {
    scoreP2++;
    println("Score Player1 = " + scoreP1 + " Score Player2 = " + scoreP2);
    x = 320;
    y = 240;
  }
  if (x == 1270) {
    scoreP1++;
    t1.setup();
    println("Score Player1 = " + scoreP1 + "Score Player2 = " + scoreP2);
    x = 320;
    y = 240;
  }
  if(y == 700 ||y == 0) {
   accelerationY*= -1;
  }
  if (x == 100 && (moveY-25 <= y && y <= moveY+100)) {
    accelerationX *= -1; 
  }
  if (x == 1170 && (moveY2-25 <= y && y <= moveY2+100)) {
    accelerationX *= -1;
  }
  }
  else if (scoreP1 >= 1 || scoreP2 >= 1) {
    t1.draw();
  }
}
void keyPressed() {
  if(keyCode == 'W') {
    moveY-= 30;
  }
  if(keyCode == 'S') {
    moveY+= 30;
  }
  if(keyCode == UP) {
    moveY2-=30;
  }
  if(keyCode == DOWN) {
    moveY2+= 30;
  }
}