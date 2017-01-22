class Ball{
  float angle = 10;
  float speed = random(0.04,0.05);
  float base = 230;
  float x, y;
  Ball(float newX, float newY){
    x = newX;
    y = newY;
  }
  
  void move(){
    x = x + sin(angle);
    y = y + cos(angle);
    angle = angle + speed;
  }
  
  void display(){
    ellipse(x,y,2,2);
  }
}