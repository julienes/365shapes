class CircleSystem{
  ArrayList<Circle> circle;
  float num;
  float speed;
  float angle;
  CircleSystem(float _num, float scalar, float _speed){
    int r = floor(random(1,6));
    circle = new ArrayList<Circle>();
    for(int i = 0; i<_num; i++){
      float angle = map(i, 0,_num, 0, TWO_PI);
      circle.add(new Circle(i,angle, scalar, r));
    }
    speed = _speed;
  }
  
  void display(){
    rotate(angle);
    for(Circle c : circle){
      c.display();
    }
    angle = angle + speed;
  }
}