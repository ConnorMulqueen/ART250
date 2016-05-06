class Enemy {
  int localX;
  int localY;
  int moveSideways = -1;
  Enemy(int x, int y) {
    localX = x;
    localY = y;
  }
  void draw() {
    rect(localX,localY,50,50);
    localX += moveSideways;
    if(localX == 25 || localX == 1230) {
      moveSideways *= -1;
      localY += 60;
    }
  }
  public int getX() {
    return localX;
  }
  public int getY() {
    return localY;
  }
  
}