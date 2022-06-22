//color palette //==========================================================================================
color red    = #FFADAD;
color orange = #FFD6A5;
color yellow = #FDFFB6;
color green  = #CAFFBF;
color blue   = #A0C4FF;
color purple = #BDB2FF;
color white  = #FFFFFC;
color black  = #000000;
color pink   = #FFC6FF;
color brown  = #cb997e;
color grey   = #C0C0C0;
color Bred   = #EE4B2B;
color Dblue  = #050A30;
color cyan   = #E0FFFF;

//images //===================================================================================================
PImage ship, background, enemyv1, bullet123, enemybulletv1, boss, bossbullet, enemyv2, v2bullet, introback, gameoverback, health;
PFont font;


//Global variables //=========================================================================================
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;
final int OPTIONS  = 5;


boolean wkey, akey, skey, dkey, spacekey;

ArrayList<GameObject> objects;
Starfighter player;
Enemy enemy;

int score;



void setup() { //==============================================================================================
  size(800, 800);
  rectMode(CENTER);
  mode = INTRO;
  
  
  objects   = new ArrayList<GameObject>();
  player    = new Starfighter();
  objects.add(player);
  score     = 0;

  
  
  
  //image setup
  ship          = loadImage("spaceship.png");
  background    = loadImage("background.png");
  enemyv1       = loadImage("enemyv1.png");
  bullet123        = loadImage("bullet.png");
  enemybulletv1 = loadImage("enemybulletv1.png");
  boss          = loadImage("boss.png");
  bossbullet    = loadImage("bossbullet.png");
  enemyv2       = loadImage("v2.png");
  v2bullet      = loadImage("v2bullet.png");
  introback     = loadImage("introback.jpeg");
  gameoverback  = loadImage("gameover.jpeg");
  health        = loadImage("health.png");
  
  //font
  font = createFont("CELTG___.TTF", 200);
  
  //keyboard setup
  wkey = akey = skey = dkey = spacekey = false;
  
 
  
}

void draw () { //===============================================================================================

  //coordinates
  println(mouseX + "," + mouseY);

  //frame work
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Mode error;" + mode);
  }
}
