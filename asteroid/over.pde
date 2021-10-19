void over(){
    fill(0, 65);
  rectMode(CENTER);
  rect(width/2, height/2, width, height);
  background(0);
 if(scal < 60) n = 1;
 if (scal > 120) n = 2;
 if (n == 1) scal = scal + 2;
 if (n == 2) scal = scal - 2;
  fill(255);
  textAlign(CENTER);
  textSize(scal);
  if (countdown == 0){
  text("Mission Complete",width/2,height / 2 - 150);
    textSize (60);
  text ("Again!", width/2, height/2 + 100);
  }

   if (countdown != 0){
  text("Mission Failed",width/2,height / 2 - 150);
    textSize (60);
  text ("Again!", width/2, height/2 + 100);
  }
  

}
