class Transition1 {
  int frames;
  int localMovex = 50;
  int localZ = 0;
  int y = 250;
  int eSizey = 50;
  int eSizeyAcceleration = 1;
  int eSizex = 50;
  int eSizexAcceleration = 1;
  boolean startSpaceInvaders = false;
  float backgroundRectFill1 = 0;
  float backgroundRectFill2 = 0;
  float backgroundRectFill3 = 0;
  void setup() {
    frameRate(60);
  }
  void draw() { //TODO: a sick legend of zelda bleepin' transition thing
    if(!startSpaceInvaders) {
      //if(frameCount % 4 == 0) { // holy fuck
      //  background(125,25,0);
      //}
      //else {
        background(255,50,50);
      //}
      //fill(134,40,22);
      //ellipse(150,150,eSizex,eSizex);
      //fill(69,40,22);
      //ellipse(150,150,eSizex/2,eSizex/2);
      //fill(44,99,21);
      //ellipse(150,150,eSizex/4,eSizex/4);
      noStroke();
      if(frameCount % 36 == 0) {
        //background rects
        
        backgroundRectFill1 = random(0,255);
        backgroundRectFill2 = random(0,255);
        backgroundRectFill3 = random(0,255);
      }
        fill(backgroundRectFill1,backgroundRectFill2,backgroundRectFill3);
        rect(850,0,1200,1200);
        rect(0,0,2000,150);
        rect(0,420,520,1234);
        fill(random(0,255),random(0,255),random(0,255));
    
        //foreground rects
        rect(800,150+eSizey,50,50);
        rect(525,150+eSizey,50,50);
        rect(eSizex,370,50,50);
        rect(eSizex,150,50,50);
      
      //if(frameCount % 24 == 0) {
      //  rect(530,480,300,300);
      //}
      fill(0,0,0);
      eSizey += eSizeyAcceleration*20;
      eSizex += eSizexAcceleration*20;
      if(eSizey > 650 || eSizey < 20) {
        eSizeyAcceleration *= -1;
      }
      if(eSizex < 20 || eSizex > 450) {
        eSizexAcceleration *= -1;
      }
      if(x != 640) {
         rect(x,y,50,100);
         x+= 2;
      }
      else {
        fill(25,250,25);
        rect(x,y,100,50);
        if(y != 600) {
          y+= 2;
        }
        else {
          spaceInvade.setup();
          startSpaceInvaders = true;
        }
      }
    }
    else {
      spaceInvade.draw();
    }
  }
}