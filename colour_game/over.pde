 void over(){
   //the final screem you see on the computer
    background(red);
    textSize(40);
    text("Game Over",400,200);
    textSize(35);
    text("score :" + score, 400, 320);
    fill(255,255,0);
    rect(320, 400, 160, 80, 10, 10, 10, 10);
    textSize(36);
    fill(0);
    text("AGAIN", 400, 435);
    text("High Score:" + hscore,400,270);
    }
    
    
