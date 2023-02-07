int _nPlanet = 100;
float[] _angle = new float [_nPlanet];
float[] _spead = new float [_nPlanet];
float[] _dist = new float [_nPlanet];
float[] _r = new float [_nPlanet];
float[] _g = new float [_nPlanet];
float[] _b = new float [_nPlanet];
float[] _size = new float [_nPlanet];
void setup()
{
  size(1000,1000);
  for(int i = 0; i < _nPlanet; i = i + 1)
  {
  _spead[i]=random(-2.5,2.5);
  _angle[1]=0.0;
  _dist[i]=random(100,400);
  _r[i]=random(0,255);
  _g[i]=random(0,255);
  _b[i]=random(0,255);
  _size[i]=random(10,100);
  }
  
}

void draw()
{
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  
  translate(width/2,height/2); 
  for(int i = 0; i < _nPlanet; i = i + 1)
  {
  drawBody(_angle[i], _dist[i],_r[i], _g[i], _b[i], _size[i]); 
 _angle[i] = _angle[i] + _spead[i]; 
 _r[i] = _r[i] + _spead[i]; 
 _g[i] = _g[i] + _spead[i]; 
  _b[i] = _b[i] + _spead[i]; 
  }

}



void drawBody(float angle, float distance, float r, float g, float b, float size)
{
 pushMatrix();
  rotate(radians(angle));
  translate(0,distance);
  fill(r,g,b);
 circle(0,0,size);
 popMatrix();
}
