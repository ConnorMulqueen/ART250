class snakeBox {
  float localX;
  float localY;
  void setup() {
     localX = random(100,800);
     localY = random(100,800);
  }
  void draw() {
    rect(localX,localY,25,25);  
  }
  public float getX() {
    return localX;
  }
  public float getY() {
    return localY;
  }
}