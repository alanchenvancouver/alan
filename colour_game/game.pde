void game() {
  //ture or false big button
  fill(0);
  rect(0, 0, 400, 600);
  fill(255);
  rect(400, 0, 400, 600);
  // ture or false

 //adding scale
  r = r + 1.2;
  s = s + 0.06;
  colword (400, 300, r, s);
  fill(200, 200, 30);
  textSize(20);
  text("YES", 200, 300);
  text("NO", 600, 300);

  sec = sec + 0.0166666666666666;
  text(sec, 30, 30);
  textSize(15);
  text("score : ", 30, 60);
  text(score, 60, 60);

  //score system


  //correct
  if (w==c && blackwhite == 1 && mode == 2) {
    score = score + 1;
    blackwhite = 0;
    sec = 0;
    r = 0;
    s = 0;
    // 50 50 percent
    coin = int(random(0, 2));
    c = int(random(0, 7));
    w = int(random(0, 7));
    if (coin == 1 ) {   
      w = c;
    }
  }



  //correct
  if (w != c && blackwhite == 2 && mode == 2) {
    score = score + 1;
    blackwhite = 0;
    sec = 0;
    r = 0;
    s = 0;

    // 50 50 percent
    coin = int(random(0, 2));
    c = int(random(0, 7));
    w = int(random(0, 7));
    if (coin == 1 ) {   
      w = c;
    }
  }
 // wrong
  if (blackwhite == 1 && w != c && mode == 2 && score > 0) {
    mode = 3;
  }


  if (blackwhite == 2 && w == c && mode == 2 && score > 0) {
    mode = 3;
  }

// time over
  if (sec > 2) {
    mode = 3;
  }
}
