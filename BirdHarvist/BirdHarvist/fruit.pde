class Snake extends Sprite
{
  float maxSpeed = 3;
  int harvist = 0;
  Snake(String id)
  {
    super(id);
    this.acceleration = new PVector(0.0,.07);
    this.registerAnimation(new Animation("snake","png"));
    this.location.y = -this.h;
    this.location.x = random(100,width-100);
    
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
    Basket Ba = new Basket("BA");
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
     preCollState = collState;
    if(res == Collision.IN)
    { 
       boing.hit();
       println("hit");
      this.location.y = Ba.location.y + random(-40,40);
      this.location.x = Ba.location.x + random(-40,40);
      this.velocity.x = 0;
      this.velocity.y = 0;
      this.acceleration.y = 0;  
      this.scale = 0.25;
      counter = counter + 1;
      println(counter);
      
    }
   
    
  }
  
  
}
