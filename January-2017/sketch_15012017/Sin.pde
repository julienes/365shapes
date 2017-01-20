class Sin{
  float angle;
  float x = 0;
  float y = height/2;
  float speed = 0.09;
  Sin(float newX, float newY, float newAngle){
    angle = newAngle;
    y = newY;
    x = newX;
  }
  
  void move(){
    y = y+cos(angle)*5;
    angle = angle+speed;
  }
  
  void display(){
    ellipse(x, y, 10, 10);
  }
}