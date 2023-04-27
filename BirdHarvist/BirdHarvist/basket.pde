class Basket extends Sprite
{
  Basket(String id)
  {
    super(id);
    this.registerAnimation(new Animation("basket","png"));
    this.location.y = 50;
    this.location.x = 50;
    this.h = 100;
    this.w = 100;
    this.reg.x=this.w/2;
    this.reg.y=this.h/2;
    this.collRadius=this.w/2;
    this.scale = 0.7;
    
  }

/*void check()
  {
    Collision coll = new Collision(this,true);
    int circle2circle(Basket sprite)
      res = coll.circle2circle(s);
  }*/
      




}
