class Snake extends Sprite
{
   Basket Ba = new Basket("BA");
  float maxSpeed = 3;
  
  boolean colect = false;
  Snake(String id)
  
  {
    super(id);
    this.acceleration = new PVector(0.0,random(0.05, 0.07));
    this.registerAnimation(new Animation("snake","png"));
    this.location.y = -this.h -random(0, this.h * 2);
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
   if (colect == false)
    {
    Collision coll = new Collision(this,true);
    int res = coll.box2circle(100,100,width-200,height-200+this.h,false);
    if(res == Collision.BOTTOM)
    {
      this.location.y = -this.h+random(0,100);
      this.location.x = random(100,width-100);
      this.velocity.x = 0;
      this.velocity.y = 0;
      this.acceleration.y = random(0.05,0.07);      
    }
    res = coll.circle2circle(s);
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
      colect = true;
      }
    }
    
  }
  
  
}
