static int amountOfProjectiles;
class spaceInvaders {
int moveX = 640;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
ArrayList<projectile> projs = new ArrayList<projectile>(60);
int projectileReload = -120;
int amountOfEnemies = 10;
Snake s = new Snake();

void setup() {
  frameRate(60);
  int enemyX = 1000;
  int enemyY = 100;
  for(int i = 0; i <10; i++) {
    enemies.add(new Enemy(enemyX,enemyY));
    enemyX-=70;
  }
  enemyX = 1000;
  enemyY = 25;
  for(int i = 10; i < 20; i++) {
    enemies.add(new Enemy(enemyX,enemyY));
    enemyX-=70;
  }
  s.setup();
  
}
void draw() {
  this.keyPressed();
  background(255,255,255);
  fill(25,250,25);
  rect(moveX,600,100,50);
  
  for(int i = 0; i < enemies.size(); i++) {
    enemies.get(i).draw();
  }
  for(int i = 0; i < projs.size(); i++) {
    for(int k = 0; k < enemies.size(); k++) {
      if((projs.get(i).getY() < enemies.get(k).getY() + 50 && projs.get(i).getY() > enemies.get(k).getY()) && (projs.get(i).getX() < enemies.get(k).getX() + 50 && projs.get(i).getX() > enemies.get(k).getX())) {
        println("Projectile removed, Enemy Removed");
        projs.remove(i);
        enemies.remove(k);
        break;
      }
    }
  }
 for(int i = 0; i < projs.size(); i++) {
   projs.get(i).draw();
 }
 if(enemies.size() == 0) {
   s.draw();
 }
   
}
void keyPressed() {
  if(keyCode == LEFT) {
    moveX-= 10;
  }
  if(keyCode == RIGHT) {
    moveX+= 10;
  }
  if(keyCode == SHIFT && projectileReload+10 < frameCount) {
    projectileReload = frameCount;
    projs.add(new projectile(moveX));
    amountOfProjectiles++;
    
  }
}
}
static public void removeProjectile(){
  amountOfProjectiles--;
}