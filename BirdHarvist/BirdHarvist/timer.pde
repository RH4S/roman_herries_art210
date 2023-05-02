class timer extends Sprite
{
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
  
  
}
