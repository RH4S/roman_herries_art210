class Bird extends Sprite
{
  float maxSpeed = 10;
  float groundL = height;
  String state = "run";
  float jumpSpeed=2.0;
  Basket bas = new Basket("BAS");
  
  Bird(String id)
  {
    super(id);
    this.acceleration.x = 0.5;
    this.registerAnimation(new Animation("bird","png"));
    this.registerAnimation(new Animation("bird_reverse","png"));
    this.scale = 0.4;
    this.h = 120;
    this.groundL = height-this.h-50;
    this.location.y = groundL;
    this.acceleration.y = 0.5;
  }
  
   void startJump()
  {
    if(this.state=="run")
    {
      this.state = "collect";
    }  
  }
  
  void jump()
  {
    this.state = "jump";
    this.velocity.y = -jumpSpeed;
    this.location.y = this.location.y - 0.1;
  }
  
  void check()
  {
  
    if(this.state=="collect")
    {
      this.jumpSpeed = this.jumpSpeed+0.1;
      if(this.jumpSpeed > 6.0) this.jumpSpeed=6.0;
    }
    if(this.state=="jump")
    {
      if(this.velocity.y < 0) this.currentAnim = 1;
      if(this.velocity.y > 0) this.currentAnim = 2;
    }
    else
    {
      this.currentAnim = 0;
    }
    if(this.location.y > this.groundL) 
    {
      this.location.y = this.groundL;
      if(this.state != "collect") 
      {
        this.state = "run";
        this.jumpSpeed = 2.0;
      } 
    }  
    Collision coll = new Collision(this,true);
    int res = coll.box2circle(100,100,width-200,height-200,false);
    
     if(res == Collision.TOP)
    {
      this.acceleration.y = this.acceleration.y * (-1.0);
      this.velocity.y = this.velocity.y * (-1.0);
    }
     
     if(res == Collision.TOP_RIGHT || res == Collision.TOP_LEFT)
    {
      this.acceleration.x = this.acceleration.x * (-1.0);
      this.velocity.x = this.velocity.x * (-1.0);
      this.acceleration.y = this.acceleration.y * (-1.0);
      this.velocity.y = this.velocity.y * (-1.0);
    }
      this.velocity.limit(this.maxSpeed);
    if(this.velocity.x < 0)
    {
      this.currentAnim = 1;
    }
    else
    {
      this.currentAnim = 0;
    }
 if(res == Collision.RIGHT || res == Collision.LEFT)
    {
      this.acceleration.x = this.acceleration.x * (-1.0);
      this.velocity.x = this.velocity.x * (-1.0);
    }
    this.velocity.limit(this.maxSpeed);
    if(this.velocity.x < 0)
    {
      this.currentAnim = 1;
    }
    else
    {
      this.currentAnim = 0;
    }
  }
}
