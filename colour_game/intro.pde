//the first page of the game
void intro(){
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
    //click botton
    text("START", 345, 455);
    textSize(50);
    fill(117, 237, 230);
    text("COLOR GAME", 250, 300);
    textSize(15);
    fill(red);
    
    
    
    //the great kindness to help you get ready
    text("To help you get ready to this game, you can always score 1 point [smile]    (Be careful about the 2 seconds limit)", 0, 590);
  }
