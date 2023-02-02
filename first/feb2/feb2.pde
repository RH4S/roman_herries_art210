float _cx = 0.0;
float _cy = 0.0;
float _cdx = 15;
float _cdy = 15;

void setup()
{
  size(700,600);
}

void draw()
{
  noStroke();
  fill(0,255,255,10);
  rect(0,0,width,height);
  fill(0);
  circle(_cx,_cy,100);
  _cx= update(_cx,_cdx);
  _cy= update(_cy,_cdy);
  _cdx = check(_cx,_cdx,0,width);
  _cdy = check(_cy,_cdy,0,height);
}

float update(float value, float increment)
{
 
 return(value + increment);
 
}

float check(float value, float delta, float low_lim, float up_lim)
{
     if(value > up_lim || value < low_lim)
  {
    return(delta * (-1));
  }   
  return(delta);
  
}
