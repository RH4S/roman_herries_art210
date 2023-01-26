float _cx = 0.1;
float _cd = 10;

void setup()
{
  size(600,600);
}

void draw()
{
  noStroke();
  fill(0,255,255,10);
  rect(0,0,width,height);
  fill(0);
  circle(mouseX,mouseY,25);
  fill(0);
  circle(_cx,mouseY,100);
   _cx = _cx  + _cd;
  if(_cx > width || _cx < 0)
  {
    _cd = _cd * (-1);
  } // stop & reset funktion
  
  println(_cx);
  
}
