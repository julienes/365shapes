class Ball{
  float angle = 10;
  float speed;
  float base = 0;
  float x, y;
  Ball(float newX, float newY){
    x = newX;
    y = newY;
  }
  
  void move(){
    speed = random(0.02, 0.06);
    x = x + sin(angle);
    y = y + cos(angle);
    angle = angle + speed;
  }
  
  void display(){
    ellipse(x,y,2,2);
  }
}