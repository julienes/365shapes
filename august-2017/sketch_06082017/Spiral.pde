class Spiral{
  float x,y;
  float angle;
  int r;
  int w;
  float speed = random(0.01, 0.05);
  float a = random(0, TWO_PI);
  Spiral(float _angle, int _r, int _w){
    angle = _angle;
    r = _r;
    w = _w;
  }
  
  void arC(){
    strokeWeight(w);
    pushMatrix();
    rotation();
    beginShape(LINES);
    for(float i = 0; i<=angle; i+=0.01){
      x = r * cos(i);
      y = r * sin(i);
      vertex(x,y);
    }
    endShape();
    popMatrix();
  }
  
  void rotation(){
    a = a + speed;
    rotate(a);
  }
}