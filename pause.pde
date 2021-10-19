void Pause(){

  stroke(255);
  strokeWeight(1);
  fill(0,0);
  circle(width/2,height/2,120);
  fill(255);
  triangle(width/2 -15,height / 2 +40,width/2 -15,height / 2 -40,width/2 + 25,height / 2 );
  if(mousePressed && dist(mouseX,mouseY,width/2,height/2) < 60){
    mode = game;
  }
}
