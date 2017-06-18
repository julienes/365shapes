class Square{
  float x, y,angle;
  float speed = 0.1;
  Square(float _x, float _y, float _r){
    x = _x;
    y = _y;
    angle = _r;
  }
  
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotateY(angle);
    box(30);
    popMatrix();
    angle = angle + speed;
  }
}