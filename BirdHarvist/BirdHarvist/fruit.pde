class Snake extends Sprite
{
  float maxSpeed = 3;
  int harvist = 0;
  int charvist = 1;
  Snake(String id)
  {
    super(id);
    this.acceleration = new PVector(random(0.0,0.01),.07);
    this.registerAnimation(new Animation("snake","png"));
    this.location.y = -this.h;
    this.rotation = 90.0;
    this.w = 60;
    this.h = 60;
    this.reg.x=this.w/2;
    this.reg.y=this.h/2;
    this.collRadius=this.w/2;
    this.translation.y=this.h / (-2.0);
    this.scale = 0.5;
  }
  
  void check()
  {
    Collision coll = new Collision(this,true);
    int res = coll.box2circle(100,100,width-200,height-200+this.h,false);
    if(res == Collision.BOTTOM)
    {
      this.location.y = -this.h+random(0,100);
      this.location.x = random(100,width-100);
      this.velocity.x = 0;
      this.velocity.y = 0;
      this.acceleration.y = random(0.01,0.03);      
    }
    res = coll.circle2circle(s);
    if(res == Collision.IN)
    { 
       boing.hit();
       collState = true; 
       
       if((collState == true) && (preCollState == false))
       {
         harvist+=charvist;
       }
       if(collState == true)
       {
         preCollState = true;
       }
       if(harvist > 3 )
       {
       gameStateChange(LOOSE);
       }
       println(harvist); 
    }
     if(res == Collision.OUT)
    { 
       collState = false; 
       if(collState == false)
       {
         preCollState = false;
       }
      
    }
  }
  
  
}
