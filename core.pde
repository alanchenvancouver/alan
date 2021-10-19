class Core extends omni{
  PVector nudge;
  
  Core(float x, float y){
    health = 3;
    loca = new PVector(x, y);
    size = 40;
    //nudge = myShip.direc.copy();
    //nudge.rotate(PI);
    //nudge.setMag(100);
    //loca.add(nudge);
    //v = myShip.direc.copy();
    //v.rotate(PI + random(-0.3,0.3));
    //v.setMag(15);
  }
  
  void show(){
    fill(0, 65);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
    stroke(255);
    strokeWeight(1);
    fill(0);
    circle(loca.x,loca.y,size);
    line(loca.x -20 ,loca.y,loca.x + 20,loca.y);
    line(loca.x,loca.y - 20 ,loca.x,loca.y + 20);
  }
  
  void act(){
    //super.act();
    loca.x = myShip.loca.x;
    loca.y = myShip.loca.y;
    nudge = myShip.direc.copy();
    nudge.rotate(PI);
    nudge.setMag(62);
    loca.add(nudge);
     
    
    
    
    
  
    
    
    
    
    
  }
  
  
}
