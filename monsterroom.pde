
//PImage sh;
//PImage b0;
//PImage b;
//PImage mw;
//PImage IF; //(eigentlick if, aber das funktioniert nicht) ):
//PImage boom;
//PImage ta5;
//PImage eg0;
//PImage sr0;
//PImage ao0;
//PImage ht0;
//PImage murder;
//PImage goodbye;
//PImage trophähe;
PImage laser;
PImage warning;
PImage ziel;
PImage locked;
PImage rocket0;
PImage rocket;
PImage pflaster;
PImage head1;
PImage head0;
PImage head;
PImage tentacle;
PImage playbutton;
PImage darkness0;
PImage darkness;
PImage burger;
PImage retry;
PImage home;
PImage bananen;
PImage psypack;
PImage apple;
PImage crazy;
PImage eb; //edit button
PImage switch0;
PImage switch1;
PImage back;
boolean play = false;
boolean go = false; //game over
boolean menu = true;
boolean edit;
boolean er = false; //edit release
boolean dark = true;
boolean images = false;
boolean win = false;
boolean boss;
boolean a; //aktiviert (für boss)
boolean credits;
//boolean achivements;
//boolean ht = true;
//boolean ao = true;
//boolean sr = true;
//boolean eg = true;
//boolean afgm; //achievement für gelbes monster
float x = 0;
float y = 50;
float mx = 1000;
float my = 50;
float m2x = 1000;
float m2y = 50;
float m3x = 1000;
float m3y = 50;
float m4x = 1000;
float m4y = 50;
float m5x = 1000;
float m5y = 50;
float m6x = 1000;
float m6y = 50;
float pbx = 800;
float pby = 300;
float Peasing = 0.05;
float Measing = 0.001;
float M2easing = 0.015;
float M3easing = 0.025;
float M4easing = 0.03;
float M6easing = 0.045;
float score = 0;
float hunger = 100;
float fear = 0;
float bx = random(400, 1520); //burger x
float by = random(400, 680); //burger y
float bananax = random(400, 1520);
float bananay = random(400, 680);
float ppx = random(400, 1520); //psypack x
float ppy = random(400, 680); //psypack y
float applex;
float appley;
float rtx = 500; //retry x
float rty = 460; //retry y
float hx = 650; //home x
float hy = 460; //home y
float txtx = random(100, 120);
float txty = random(500, 525);
float txt2x = random(95, 125);
float txt2y = random(495, 530);
float red = 255;
float ex = 800; //edit x
float ey = 400; //edit y
float time;
float st; //switch time(für edit)
float ss = 0; //start score
float HP = 5;
float dt; //damage time
float bt; //boss time
float hx0 = 700; //head x
float hy0 = -500;
float tx = 400;
float ty = -1920;
float tx0 = 1200;
float ty0 = -1920;
float br = 24; //black redius (für den boss)
int radius = 24;
int edge = 250;
int inner = edge + radius;
int lose;
float bHP = 5000;
float bHP0 = 5000;
float px = random(edge + 24, width - edge * 1.24); //pflaster
float py = random(edge + 24, width - edge * 1.24);
float gzx; //gelb ziel x
float gzy; //gelb ziel y
float rx = random(edge + 24, width - edge * 1.24); //rakete
float ry = random(edge + 24, width - edge * 1.24);
float zt; //ziel time(für gelb)
float tt; //teleport time
float zx; //ziel x (für grün im bosskampf)
float zy;
float zt0;  //ziel time (für grün)
float wx; //warning x
float wy;
float bt0; //black time#
float ft; //fight time (auch für den boss)
float at; //attack time(vom boss)
float ac; //attack chance(vom boss)
float tt0; //tentacle time (links)
float tt1; //tentacle time (rechts)
float tt2; //tentacle time (beide)
float lt; //laser time(ebenfalls für boss)
float wt;
float cx; //credits x
float cy; //credits y
float wins = 50;
//float burgers = 100;
//float bananas = 100;

void setup() {
  size(1920, 1080);
  noStroke();
  ellipseMode(RADIUS);
  rectMode(CORNERS);

  playbutton = loadImage("play.png");
  darkness = loadImage("darkness.png");
  burger = loadImage("burger.png");
  retry = loadImage("retry.png");
  home = loadImage("house.png");
  bananen = loadImage("bananen.png");
  psypack = loadImage("psypack.png");
  apple = loadImage("apple.png");
  crazy = loadImage("insanity.png");
  eb = loadImage("edit.png");
  
  locked = loadImage("locked.png");
  switch0 = loadImage("switch.png");
  switch1 = loadImage("switch0.png");
  back = loadImage("back.png");
  //trophähe = loadImage("trophähe.png");
  
  //goodbye = loadImage("goodbye.png");
  //murder = loadImage("Murder.png");
  //ht0 = loadImage("ht.png");
  //ao0 = loadImage("ao.png");
  //sr0 = loadImage("sr.png");
  //eg0 = loadImage("eg.png");
  //ta5 = loadImage("ta5.png");
  //boom = loadImage("boom.png");
  //IF = loadImage("if.png");
  //mw = loadImage("mw.png");
  //b = loadImage("b.png");
  //b0 = loadImage("b0.png");
  //sh = loadImage("sh.png");

  head = loadImage("boss.png");
  head0 = loadImage("boss0.png");
  head1 = loadImage("boss1.png");
  tentacle = loadImage("tentacle.png");
  darkness0 = loadImage("darkness0.png");
  pflaster = loadImage("pflaster.png");
  rocket = loadImage("rocket.png");
  rocket0 = loadImage("rocket0.png");
  ziel = loadImage("ziel.png");
  warning = loadImage("warning.png");
  laser = loadImage("laser.png");
}

void draw() {
  background(51);
  player();
  edit();
  food();
  monsters();
  darkness();
  boss();
  texts();
  go();
  menu();
  win();
  credits();
  //achivements();

  if (time > 0) {
    time = time - 0.1;
  }

  //----------------------------------------------------------edit----------------------------------------------
  if (edit == true) {
  }

  if (play == true) {

    //------------------------------------------------------------text and co-------------------------------------------------------------------------------


    //-----------------------------------------------------------------------------------game over-----------------------------------------------------------------------
  }
}
void mousePressed() {
  if (boss == true && bt < 80) {
    bt = 80;
    hy0 = 0;
    ty = -820;
    ty0 = -820;
  }
}
