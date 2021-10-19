class particles extends omni{
  int t;
  PVector bomb;
  
  particles(float x, float y){
    health = 1;
    size = 8;
    
    t = 255;
    
    loca = new PVector (x,y);
    v = new PVector (0,1);
    v. rotate(PI + random (-5,5));
    v.setMag(3);
  }
  
  void show(){
    noStroke();
    fill(255,t);
    circle(loca.x,loca.y,size);
  }
    
    void act(){
      super.act();
      t = t-20;
      if ( t < 0) health = 0;
      
    }
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
