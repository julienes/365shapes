class Circles{
  float x, y;
  float angle;
  float speed = 0.09;
  Circle[] circle = new Circle[20];
  Circles(float _angle){
    angle = _angle;
    for(int i = 0 ; i<circle.length; i++){
      circle[i] = new Circle(i*10);
    }
  }
  
  void display(){
    x = sin(angle)*30;
    y = cos(angle)*30;
    pushMatrix();
    translate(x,y);
    for(int i = 0 ; i<circle.length; i++){
      circle[i].display();
    }
    popMatrix();
    angle = angle + speed;
  }
}