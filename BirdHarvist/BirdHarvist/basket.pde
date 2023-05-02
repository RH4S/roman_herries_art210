class Basket extends Sprite
{
  Basket(String id)
  {
    super(id);
    this.registerAnimation(new Animation("basket","png"));
    this.location.y = this.h - this.h/2;
    this.location.x = this.w - this.w/2;
    this.h = 150;
    this.w = 150;
    this.reg.x=this.w/2;
    this.reg.y=this.h/2;
    this.collRadius=this.w/2;
    this.scale = 1.2;
    
  }

/*void check()
  {
    Collision coll = new Collision(this,true);
    int circle2circle(Basket sprite)
      res = coll.circle2circle(s);
  }*/
      




}
