//Alan Chen
//Sep. 26 th
// The kind color game



//color
color red = #FF0000;
color blue = #0000FF;
color yellow = #FEFF08;
color green = #03FF00;
color purple = #FF00F3;
color pink = #FFD1FC;
color orange = #FF6803;

//Font
PFont Insecure;

// not very useful varaibles
int count,account;

// gifs and array
PImage[] gif;
String[] words;
color[] colors;

//modes
int mode;
final int intro = 1;
final int game = 2;
final int over = 3;
final int pause = 0;


// for the array
int c, w;



//mode intro variable
int numoffram, f;


//mode game variable
float r, s, sec, coin;
int blackwhite, score,hscore;





void setup () {
  
  //Font
  Insecure = createFont("Insecure.ttf",50);
  
  // the text and color arrays
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


  size(800, 600);

  mode = intro;

//useless variables
count = 0;
account = 0;

// gif for the mode intro
  f = 0;
  numoffram = 50;
  gif = new PImage[numoffram];
  while ( f < numoffram) {
    gif[f] = loadImage("frame_"+f+"_delay-0.04s.gif");
    f = f + 1;
  }
  f=0;

  //mode 2 settings
  r = 0;
  s = 0;
  sec = 0;
  blackwhite = 0;
  coin = 0;
}


void draw() {
 //Font
 textFont(Insecure);
  
  if (mode == intro){
    intro();
  }
  else if (mode == pause){
    pause();
  }
  else if (mode == game){
    game();
  }
  else if (mode ==over){
    over();
  }
  
  // high scores
 if (hscore < score) hscore = score;
 
    
}





// the color word colword
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




  //mode intro to game
  if ( mouseX > 320 && mouseX < 480 && mouseY > 400 && mouseY < 480 && mode == 1 ) {
   mode = 0;
  }

//mode over to intro
if ( mouseX > 320 && mouseX < 480 && mouseY > 400 && mouseY < 480 && mode == 3 ) {
  mode = 1;
   score = 0;
   r = 0;
   s = 0;
   sec = 0;
    print("<");
  }
  
  
  // true or false
  if ( mouseX < 400 && mode == 2) {
    blackwhite = 1;
    print("!");
  }

  if ( mouseX > 400 && mode == 2) {
    blackwhite = 2;
    print("?");
  }
 


    
  
 
  
  
  
  
  
  
}
