class Repulse {
  float x, y;
  float angle;
  float speed = 0.05;
  int R = 100;
  
  Repulse(){
  
  }
  
  void update(){
    x = R * cos(angle);
    y = R * sin(angle);
    angle = angle + speed;
  }
  
  void display(){
    fill(255);
    ellipse(x,y,30,30);
  }
}