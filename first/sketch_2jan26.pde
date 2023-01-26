float _cx = 0.1;

void setup()
{
  size(2000,600);
}

void draw()
{
  noStroke();
  fill(0,255,255);
  rect(0,0,width,height);
  fill(0);
  circle(mouseX,mouseY,25);
  fill(0);
  circle(_cx/2,mouseY,100);
  _cx = _cx * 1.01;
  if(_cx > width*2) 
  {
    _cx = 0.001;
  } // stop & reset funktion
  println(_cx);
  
}
