PImage[] gif;
String[] words;
color[] colors;
color red = #FF0000;
color blue = #0000FF;
color yellow = #00FF00;
color green = #03FF00;
color purple = #6100FF;
color pink = #ED7CDE;
color orange = #FF6803;



float x, y, r, s, sec,func;
int w ;
int c ;
int tf, score, start;
int numoffram;
int i, f, coin;
int re;








void setup ()
{
  size(800, 600);
  sec = 0;
  tf = 2;
  start = 0;
  score = 0;
  i = 0;
  f = 0;
  re = 0;

  words = new String [7];
  words[0] = "red";
  words[1] = "blue";
  words[2] = "yellow";
  words[3] = "green";
  words[4] = "purple";
  words[5] = "pink";
  words[6] = "orange";

  colors = new color [7];
  colors[0] = red;
  colors[1] = blue;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = purple;
  colors[5] = pink;
  colors[6] = orange;

  numoffram = 50;
  gif = new PImage[numoffram];
  while ( f < numoffram) {
    gif[f] = loadImage("frame_"+f+"_delay-0.04s.gif");
    f = f + 1;
  }
  f=0;
}



void draw() {
  func = (10 + score) / (score + 1);
  if (start == 0) {
    background(0, 0, 0);
    image(gif[f], 0, 0, width, height);
    f = f+1;
    if (f == numoffram) f = 0;
    fill(254);
    rect(320, 400, 160, 80, 10, 10, 10, 10);
    textAlign(15);
    textSize(12);
    text("Alan", 320, 400);
    textSize(36);
    fill(0);
    text("START", 345, 455);
  }
  if (start == 1) { 
    background(0);
    r = r + 1.2;
    s = s + 0.02;

    sec = sec + 0.0166666666666666;
    rectMode(CENTER);
    fill(0);
    rect(0, 0, 400, 600);
    fill(255);
    rect(600, 300, 400, 600);
    fill (255, 0, 0);
    colword (400, 300, r, s);
    fill(200, 200, 30);
    textSize(20);
    text("YES", 200, 300);
    text("NO", 600, 300);
    text(sec, 30, 30);
    text(tf, 30, 90);



    if (w==c && tf == 0 && re == 1) {
      score = score + 1;
      tf = 2;
      sec = 0;
      r = 0;
      s = 0;
      
      
      
      
      
      coin = int(random(0, 2)); 
      c = int(random(0, 7));
      if (coin == 1) {   
        c = w ;
      } else {
        w = int(random(0, 7));
      }
    }

    if ( tf == 1 && w != c && re == 1) {
      score = score + 1;
      tf = 2;
      sec = 0;
      r = 0;
      s = 0;
      
      
      
      
      coin = int(random(0, 2)); 
      c = int(random(0, 7));
      if (coin == 1) {   
        c = w ;
      } else{
        w = int(random(0, 7));
      }
      
      
      
      
    }

    textSize(15);
    text("score : ", 30, 60);
    text(score, 60, 60);


    if (w==c && tf == 1) {
      re = 2;
      background (255, 0, 0);
      strokeWeight(100);
      textSize(35);
      text(score, 400, 300);
    }


    if (tf == 0 && w != c ) {
       re = 2;
      background (255, 0, 0);
      strokeWeight(100);
      textSize(35);
      text(score, 400, 300);
    }
    
    
    if (sec > func) { 

      background (255, 0, 0);
      strokeWeight(100);
      textSize(35);
      text(score, 400, 300);
    }
  }
}

void colword (float x, float y, float r, float s) {
  pushMatrix();
  translate(x, y);
  rotate(radians(r));
  scale(s);
  textAlign(CENTER, CENTER);
  fill(colors[c]);
  text(words[w], 0, 0);
  popMatrix();
}

void mousePressed() {
  if ( mouseX < 400 && start == 1) {
    tf = 0;
    print("!");
  }

  if ( mouseX > 400 && start == 1) {
    tf = 1;
    print("?");
  }
  if ( mouseX > 320 && mouseX < 480 && mouseY > 400 && mouseY < 480 ) {
    start = 1;
    tf = 2;
    re = 1;
  }
}
