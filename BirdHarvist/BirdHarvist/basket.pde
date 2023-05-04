class Basket extends Sprite
{
  PVector gatherloc = new PVector(this.location.x,this.location.y);
  Basket(String id)
  {
    super(id);
    this.registerAnimation(new Animation("basket","png"));
    this.location.y = this.h;
    this.location.x = this.w;
    this.h = 170;
    this.w = 170;
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
