class timer extends Sprite
{
  int time = 0;
  int timerStart = 0;
  int countDown = 0;
  int countDownStart = 30;
  

  timer(String id)
  {
    super(id);
   
    this.location.y = this.h - this.h/2 - height;
    this.location.x = this.w - this.w/2 - width;
    this.h = 150;
    this.w = 150;
    this.reg.x=this.w/2;
    this.reg.y=this.h/2;
    this.collRadius=this.w/2;
    this.scale = 1.2;
    
  }
  
  void display()
  {
    textAlign(CENTER);
    textFont(startfont);
    textSize(40);
    
  
  
  time = int(millis()/ 1000 - timerStart);     // counts up from the start time (0)
  
  
  countDown = int (countDownStart - time);   // counts down from the start time (20)
 
  
  
  fill(100, 240, 140);  
  text ("Time Till Winter " + countDown , width/2, 200);    // display countdown
  
  }
  void check()
{
  if((countDown == 0) && (counter < 10))
  {
    gameState = LOOSE;
    timerStart = millis() / 1000;
    countDown  = countDownStart;
  }
  if((countDown == 0) && (counter > 9))
  {
    gameState = WIN;
    timerStart = millis() / 1000;
    countDown  = countDownStart;
  }
  println(countDown);
}
}
