void game(){
    fr = 0;
  numofframe = 71;
  gif = new PImage[numofframe];
  while ( fr < numofframe) {
    gif[fr] = loadImage("frame"+fr+"_delay-0.04s.gif");
    fr = fr + 1;

  }
 fr = 0;
 
   image(gif[fr], 0+width/2, 0+height/2, width, height);
  fr = fr+1;
  if (fr == numofframe) fr = 0;
  
   stroke(0);
    fill(col4,250,250);
  rect(0,20,teleport/2,20);
  
   fill(blue);
   rect(width -20,20,40,40);
   fill(purple);
   rect(width -10,20,7.5,30,5,5,5,5);
   rect(width -26,20,7.5,30,5,5,5,5);
      fill(0, 65);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);

    
    int i =0;
    while (i < myomni.size()) {
      omni myom = myomni.get(i);
      myom.show();
      myom.act();
      
      
      if (myomni.get(i).health == 0 ) {
        myomni.remove(i);
      } else {
        i++;
      }
    }
    
    timers = timers - 1;
    
 if (timers <= 0){
   myomni.add(new UFO());
   timers = 1500;
 }
    
if(button == 1){
  immune --;
  if (immune == 0){
    button = 0;
    col =255;
    col2 = 255;
    col3 = 255;
    immune = 180;
  }
}
    
    if(telebutton == 1){
      teleport++;
    }
  if (teleport > 900){
    telebutton = 0;
    teleport = 900;
    col4 = 255;
  }
  
  if (mousePressed && mouseX > width -40 && mouseY < 40){
    mode = pause;
  }
    textSize(22);
    fill(255);
  text("HP",13,57);
  text("SUPER",30,29);
}
