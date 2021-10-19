class asteroids extends omni {

  asteroids() {
    health = 1;
    loca = new PVector (random(0, width), random(0, 450));
    v = new PVector (0, 1);
    v.rotate(random(0, TWO_PI));
    size = 100;
  }

  asteroids (int s, float x, float y) {
    health = 1;
    loca = new PVector (x, y);
    v = new PVector (0, 1);
    v.rotate( random(0, TWO_PI));
    size = s;
  }



  void show() {
    noFill();
    stroke(255);
    ellipse(loca.x, loca.y, size, size);
  }

  void act () {
    super. act();
        if (mode == over){
          health = 0;
        }





    int i =0;
    while (i < myomni.size()) {
      omni myom =myomni.get(i);
      if (myom instanceof Bullet) {

        if (dist(loca.x, loca.y, myom.loca.x, myom.loca.y) <= size/2 + myom.size) {
          myom.health = 0;
          health = 0;
          if (size > 13) {
            myomni.add(new asteroids(size/2, loca.x, loca.y));
            myomni.add(new asteroids(size/2, loca.x, loca.y));
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
          if (size < 13) {
            countdown = countdown - 1;
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
      }





      if (myom instanceof ship) {

        
        
        
        if (dist(loca.x, loca.y,myom.loca.x, myom.loca.y) <= size/2 +20 && button == 0 ) {
          
                  

          
          myom.health = myom.health - 1;
          health = 0;
          button = 1;
          col = 180;
          col2 = 180;
          col3 = 220;
          if (size > 13) {
            myomni.add(new asteroids(size/2, loca.x, loca.y));
            myomni.add(new asteroids(size/2, loca.x, loca.y));
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
          if (size < 13) {
            countdown = countdown - 1;
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



     
    
    
    
      }









      i++;
    }
    if (loca.y < -50) loca.y = height + 50;
    if (loca.y > height + 50) loca.y = -50;
    if (loca.x < -50) loca.x = width + 50;
    if (loca.x > width + 50) loca.x = - 50;
  }
}
