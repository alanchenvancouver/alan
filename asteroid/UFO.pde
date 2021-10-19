class UFO extends omni {

  PVector direc;
  int shotTimer, threshold;


  UFO() {
    health = 1;
    loca = new PVector(random(200, width-200), 0);
    v = new PVector(random(-0.5, 0.5), random(0, 2));
    direc = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 30;
  }

  void show() {
    fill(255);
    stroke(255);
    strokeWeight(1);
    square (loca.x, loca.y, 30);
  }

  void act() {
    super.act();
    if (mode == over) health = 0;
    shotTimer++;
    if (shotTimer == 60 && loca.y > -40 && loca.x < width + 40 && loca.y < height + 40 && loca.x > -40) {
      myomni.add(new UBullet(loca.x, loca.y));
      shotTimer = 0;
    }

    
    
      
        int i =0;
    while (i < myomni.size()) {
      omni myom =myomni.get(i);
    if (myom instanceof Bullet) {

        if (dist(loca.x, loca.y,myom.loca.x,myom.loca.y) <= 30) {
          myom.health = 0;
          health = 0;
                       myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
               myomni.add(new particles(loca.x,loca.y));
        }
      }
      

         i++;
    }
    

    
    
  }
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
  }
  
  
  
