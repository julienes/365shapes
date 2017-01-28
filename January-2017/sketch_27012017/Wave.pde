class Wave{
  float x, y, y2;
  float angle;
  float speed = 0.05;
  float base = 250;
  Wave(float newX, float newAngle){
    x = newX;
    angle = newAngle;
  }
  
  
  void move(){
    y = base + cos(angle)*130;
    y2 = base - cos(angle)*130;
    angle = angle + speed;
  }
  
  void display(){
    ellipse(x,y,10,10);
    ellipse(x,y2,10,10);
    line(x,y,x,y2);
  }
}