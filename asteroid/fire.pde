class Fire extends omni{
  int t;  //transparency
  PVector nudge;
  
  Fire(){
    health = 1;
    size = int(random(5,12));
    t = int(random(200,255));
    loca = new PVector(myShip.loca.x,myShip.loca.y);
    nudge = myShip.direc.copy();
    nudge.rotate(PI);
    nudge.setMag(15);
    loca.add(nudge);
    v = myShip.direc.copy();
    v.rotate(PI + random(-0.3,0.3));
    v.setMag(15);
  }
  
  void show(){
    noStroke();
    fill(255,0,0,t);
    square(loca.x,loca.y,size);
  }
  
  void act(){
    super.act();
    t = t - 30;
    if(t<=0) health = 0;
  }
  
  
}
