//Alan Chen
//Oct.16th, 2021
// Asteroids


int bug = 3;
//Hi Mr.Pettier. This game is brutal. If you want to see the winning screen, please to change the bug to 300;
//1 is teleport


//Font
PFont Insecure;


boolean upkey, downkey, leftkey, rightkey, spacekey,onekey;
ship myShip;
UFO notmyUFO;
asteroids aster;
ArrayList<omni> myomni;

int mode;
final int intro = 1;
final int game = 2;
final int over = 3;
final int pause = 4;
PImage[] gif;

//mode intro variable
int numoffram, f;
int numofframe, fr;


int scal = 39;
int n = 0;
int m = 0;
int l = 0;
int countdown = 32;
int timers = 1500;
int button = 1;
int immune = 180;
int col = 180;
int col2 = 180;
int col3 = 220;
int col4 = 150;
int teleport = 600;
int telebutton = 1;
int pausetimers = 0;
float ranx,rany;


//color
color red = #FF0000;
color blue = #0000FF;
color yellow = #FEFF08;
color green = #03FF00;
color purple = #FF00F3;
color pink = #FFD1FC;
color orange = #FF6803;




void setup() {
  size(1200, 1000,P2D);
  imageMode(CENTER);
  rectMode(CENTER);
    Insecure = createFont("Insecure.ttf",50);
  myShip = new ship();
  notmyUFO = new UFO();
  aster = new asteroids();
  myomni = new ArrayList<omni>();
  myomni.add(myShip);
  myomni.add(new asteroids());
  myomni.add(new asteroids());
  myomni.add(new asteroids());
  myomni.add(new asteroids());
  myomni.add(notmyUFO);
  mode = intro;






}

void draw() {
    //Font
  textFont(Insecure);
        ranx = random(0,width);
      rany = random(0,height);
          //  println(ranx,rany);

  while (dist(aster.loca.x,aster.loca.y,ranx,rany) > 200 && onekey && telebutton == 0){
    myShip.loca = new PVector(ranx, rany);
    telebutton = 1;
    teleport = 0;
    col4 = 150;
  }
          

if(mode == intro) intro();

  if (mode == game) game();

  
if (mode == pause){
  Pause();
  
}


  if(myShip.health == 0 && mode == game){
    mode = over;
  }
  
  
  
  if (countdown == 0) mode = over;
  if ( mode == over) over();
}

void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == '1' ) onekey = true;
  if (keyCode == ' ') spacekey = true;
}


void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == ' ') spacekey = false;
   if (keyCode == '1') onekey = false;
}

void mousePressed(){
  if (mode == intro) mode = game;
  if (mode == over) {
  mode = intro;
  myShip = new ship();
  notmyUFO = new UFO();
  myomni = new ArrayList<omni>();
  myomni.add(myShip);
  myomni.add(new asteroids());
  myomni.add(new asteroids());
  myomni.add(new asteroids());
  myomni.add(new asteroids());
  myomni.add(notmyUFO);
  
  
scal = 39;
n = 0;
m = 0;
countdown = 32;
timers = 1500;
button = 1;
immune = 180;
col = 180;
col2 = 180;
col3 = 220;
col4 = 150;
teleport = 600;
telebutton = 1;
pausetimers = 0;
  
  
  
  
  
  }
}
