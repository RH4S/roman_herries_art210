import processing.sound.*;
import de.looksgood.ani.*;

Bird s;
Basket b;
timer ti;
Score sc;
int nSnake = 13;
int counter = 0;
Snake[] z = new Snake[nSnake];
boolean test = false;
Synth boing;
PFont startfont;

static final int SPLASH = 0;
static final int PLAY = 1;
static final int LOOSE = 2;
static final int WIN = 3;
int gameState = SPLASH;
PImage back;
PImage winter;
PImage spring;
void setup()
{
  size(1200,800);
  //fullScreen();
  Ani.init(this);
  winter = loadImage("winter.jpeg");
  back = loadImage("round.png");
  spring = loadImage("spring.png");
  back.resize(width,height);
  winter.resize(width,height);
  spring.resize(width,height);
  startfont = createFont("Sigmar-Regular.ttf",100);
  gameStateChange(SPLASH);
  
}

void draw()
{
  if(gameState == SPLASH) splash_run();
  if(gameState == PLAY) game_run();
  if(gameState == LOOSE) loose_run();
  if(gameState == WIN) win_run();
}

void keyPressed()
{
  if(gameState == SPLASH) splash_keyPressed();
  if(gameState == PLAY) game_keyPressed();
  if(gameState == LOOSE) loose_keyPressed();
  if(gameState == WIN) win_keyPressed();
}

void mouseClicked()
{
  if(gameState == SPLASH) splash_mouseClicked();
  if(gameState == PLAY) game_mouseClicked(); 
  if(gameState == LOOSE) loose_mouseClicked();
  if(gameState == WIN) win_mouseClicked();
}

void mouseReleased()
{
  if(gameState == SPLASH) splash_mouseReleased();
  if(gameState == PLAY) game_mouseReleased(); 
  if(gameState == LOOSE) loose_mouseReleased();
  if(gameState == WIN) win_mouseReleased();
}


void gameStateChange(int state)
{
  gameState = state;
  if(gameState == SPLASH) splash_init();
  if(gameState == PLAY) game_init();
  if(gameState == LOOSE) loose_init();
  if(gameState == WIN) win_init();
}

/*splash stuff begin---------------------------------*/
void win_init()
{
  s = new Bird("test");
}

void win_run()
{
  background(spring);
  textAlign(CENTER);
  textFont(startfont);
  textSize(100);
  fill(255,255,100);
  text("welcome to spring",width/2,height/2);
  s.display();
  s.update();
  s.check();
}

void win_keyPressed()
{
 /* gameStateChange(PLAY);
 
  counter = 0;
  ti.time = 0;
  
  */
}
void win_mouseClicked()
{
}
void win_mouseReleased()
{
}
/* win end losse begin ---------------------------------------*/
void loose_init()
{
  s = new Bird("test");
}

void loose_run()
{
  background(winter);
  textAlign(CENTER);
  textFont(startfont);
  textSize(100);
  fill(255,100,100);
  text("you have starved",width/2,height/2);
  
}

void loose_keyPressed()
{
 /* gameStateChange(PLAY);
  ti.countDown = 30;
  counter = 0;
  */
}

void loose_mouseClicked()
{

 
}

void loose_mouseReleased()
{

}
/*splash stuff end-00--------------------------------*/

/*splash stuff begin---------------------------------*/
void splash_init()
{
  s = new Bird("test");
 
}

void splash_run()
{
  background(100,250,200);
  textAlign(CENTER);
  textFont(startfont);
  textSize(60);
  fill(255,100,100);
  text("Press ANY key to begin",width/2,height/2);
  s.display();
  s.update();
  s.check();
 
}

void splash_keyPressed()
{
  gameStateChange(PLAY);
}

void splash_mouseClicked()
{

}
void splash_mouseReleased()
{
}
/*splash stuff end-00--------------------------------*/


/*game stuff begin---------------------------------*/
void game_init()
{
  boing = new Synth(this,1);
  b = new Basket("basket");
  s = new Bird("test");
  ti = new timer("time");
  sc = new Score("score");
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i] = new Snake("snake"+i);
  } 
  
}

void game_run()
{
  background(back);
  fill(230);
  if (test)
  {
    fill(color(0,0,255,100));
  rect(100,100,width-200,height-200);
  }
  
  b.display();
  b.update();
  b.check();
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i].display();
    z[i].update();
    z[i].check();
  }  
  s.display();
  s.update();
  s.check();
  ti.display();
  ti.update();
  ti.check();
  sc.display();
  sc.update();
  sc.check();
  
  boing.display();
  boing.update();
  
}

void game_keyPressed()
{
  
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
}

void game_mouseClicked()
{
  //boing.frequency = random(60,6000);
   //boing.hit();
   s.velocity.y = -10;
}
void game_mouseReleased()
{
}
/*game stuff end---------------------------------*/
