class ship extends omni {

  PVector direc;
  int shotTimer, threshold;
  Core myCore;


  ship() {


    health = bug;
    loca = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    direc = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 30;
    myCore = new Core(loca.x, loca.y);
  }

  void show() {
    fill(255,0,0);
    rect(0,50,health * 150,20);
    pushMatrix();
    translate(loca.x , loca. y );
    rotate(direc.heading()+ PI / 2);
    fill(col,col2,col3);
    stroke(255);
    strokeWeight(1);
    /*
    line(0, 50-10, 0, -25-10);
    line (0, -25-10, -12.5, 37.5-10);
    line(0, -25-10, 12.5, 37.5-10);
    line(0, 50-10, -12.5, 37.5-10);
    line(0, 50-10, 12.5, 37.5-10);
    line(0, 5-10, 12.5, 37.5-10);
    line(0, -5-10, 12.5, 37.5-10);
    line(0, 5-10, -12.5, 37.5-10);
    line(0, -5-10, -12.5, 37.5-10);

    line(12.5, 37.5-10, 90, 120-10);
    line(-12.5, 37.5-10, -90, 120-10);
    line(15, 87.5-10, 90, 120-10);
    line(-15, 87.5-10, -90, 120-10);
    line(15, 87.5-10, 20, 100-10);
    line(-15, 87.5-10, -20, 100-10);
    line(-20, 100-10, 20, 100-10);
*/
     triangle(-15,8,15,8,0,-50);
    popMatrix();
    



    //myCore.show();
  }

  void act() {
    myCore.act();

    super.act();

    if (v.mag() > 13) {
      v.setMag(13);
    }
    //magnitude

    shotTimer++;

    if (upkey) {
      v.add(direc);
      myomni.add(new Fire());
      myomni.add(new Fire());
      myomni.add(new Fire());
    }
    if (downkey) v.sub(direc);
    if (leftkey) direc.rotate(-radians (2));
    if (rightkey) direc.rotate(radians (2));
    if (spacekey && shotTimer >= threshold) {
      myomni.add(new Bullet());
      shotTimer = 0;
    }
    
    
    
    
    
    


    
    
    
    
    if (loca.y < -20) loca.y = height + 20;
    if (loca.y > height + 20) loca.y = -20;
    if (loca.x < -20) loca.x = width + 20;
    if (loca.x > width + 20) loca.x = - 20;
  }
}
