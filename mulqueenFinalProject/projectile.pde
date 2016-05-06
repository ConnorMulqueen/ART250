class projectile {
  
  int localX;
  int localY = 600;
  projectile() {
    
  }
  projectile(int x) {
    localX = x + 50;
  }
  
  void draw() {
    if (localX != 0) {
      rect(localX,localY,12,25);
      localY-= 15;
    }
    if (localY <= 0) {
      mulqueenFinalProject.removeProjectile();
    }
  }
  public int getX() {
    return localX;
  }
  public int getY() {
    return localY;
  }
  
}