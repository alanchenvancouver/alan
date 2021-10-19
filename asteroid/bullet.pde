class Bullet extends omni {


  int timer;

  Bullet() {
    timer = 60;
    health = 1;
    loca = new PVector(myShip.loca.x, myShip.loca.y);
    v = new PVector(myShip.direc.x, myShip.direc.y);
    v.setMag(10);    
    v.add(v);
    size = 10;
  }

  void show() {
    stroke(255);
    noFill();
    ellipse(loca.x, loca.y, size, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer == 0) {
      health = 0;
    }
    
   
  
  
  
 } 
  
  
}
