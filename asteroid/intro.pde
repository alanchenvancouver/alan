


void intro(){
  
    f = 0;
  numoffram = 200;
  gif = new PImage[numoffram];
  while ( f < numoffram) {
    gif[f] = loadImage("frame_"+f+"_delay-0.04s.gif");
    f = f + 1;

  }
 f = 0;
  
  
    fill(0, 65);
rectMode(CENTER);
  rect(width/2, height/2, width, height);

  
    image(gif[f], 0+width/2, 0+height/2, width, height);
  f = f+1;
  if (f == numoffram) f = 0;
  
 if(scal < 60) n = 1;
 if (scal > 120) n = 2;
 if (n == 1) scal = scal + 2;
 if (n == 2) scal = scal - 2;
  fill(255);
  textAlign(CENTER);
  textSize(scal);
  text("Asteroids",width/2,height / 2 - 150);
  textSize (60);
  text ("START!", width/2, height/2 + 100);
  
  
}
