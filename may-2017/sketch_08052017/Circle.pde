class Circle{
  float s;
  float x,y;
  float angle;
  float speed = 0.1;
  Circle(float _s, float _angle){
    s = _s;
    angle = _angle;
  }
  void display(){
    x = sin(angle)*5;
    y = cos(angle)*5;
    ellipse(x,y,s,s);
    angle = angle + speed;
  }
}