class Ellipse {
  float x,y;
  float r;
  float speed = 0.1;
  Ellipse(float _x, float _y, float _r){
    x = _x;
    y = _y;
    r = _r;
  }
  
  void display(){
    r+=speed;
    pushMatrix();
    translate(x,y);
    rotate(r);
    arc(0, 0, 20, 20, 0, PI);
    popMatrix();
  }
}