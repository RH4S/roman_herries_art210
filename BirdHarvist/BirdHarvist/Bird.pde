class Bird extends Sprite
{
  float maxSpeed = 5;
  
  Bird(String id)
  {
    super(id);
    this.acceleration = new PVector(0.4,0.5);
    this.registerAnimation(new Animation("bird","png"));
    this.registerAnimation(new Animation("bird_reverse","png"));
    this.scale = 0.4;
    this.h = 120;
    this.location.y = height-this.h-50 ;
  }
  
  void check()
  {
    Collision coll = new Collision(this,true);
    int res = coll.box2circle(100,100,width-200,height-200,false);
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
