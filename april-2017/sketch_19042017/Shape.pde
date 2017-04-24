class Shape{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  float ctr;
  Shape(float _r, float _c){
    radius = _r;
    ctr = _c;
  }
  
  void display(){
    beginShape();
    for(float a = 0; a < TWO_PI+0.1; a+=PI/20){
      float x = cos(a);
      float y = sin(a);
      float noi = noise(x+1, y+1, ctr);
      float d = radius + map(noi, 0,1, -100,20);
      vertex(d * x, d * y);
    }
    endShape();
    ctr += 0.04;
  }
}