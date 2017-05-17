class Shape{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  float ctr;
  float b;
  float c;
  Shape(float _r, float _c){
    radius = _r;
    ctr = _c;
  }
  
  void display(){
    beginShape();
    for(float a = 0; a < TWO_PI+PI; a+=2){
      float x = radius * cos(a*c);
      float y = radius * sin(a*b);
      float z= a*-80;
      vertex(x, y, z);
    }
    endShape();
    b += 0.02;
    c += 0.03;
  }
}