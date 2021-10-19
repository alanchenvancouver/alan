class UBullet extends omni {


  int timer;

  UBullet(float x, float y) {
    timer = 120;
    health = 1;
    loca = new PVector(x, y);
    v = new PVector(myShip.loca.x - loca.x, myShip.loca.y - loca . y);
    v.setMag(5);    
    v.add(v) ;
    size = 10;
  }

  void show() {
    stroke(255, 0, 0);
    fill(255);
    //noFill();
    ellipse(loca.x, loca.y, size, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer == 0) {
      health = 0;
    }



    int i =0;
    while (i < myomni.size()) {
      omni myom =myomni.get(i);
      if (myom instanceof ship) {

        if (dist(loca.x, loca.y, myom.loca.x, myom.loca.y) <= size/2 + 20 && button == 0) {
          myom.health = myom.health - 1;
          health = 0;
          button = 1;
          col = 180;
          col2 = 180;
          col3 = 220;
        }
      }

      i++;
    }
  }
}
