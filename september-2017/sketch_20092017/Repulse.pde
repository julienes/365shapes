class Repulse {
  float x, y;
  float angle;
  float speed = 0.05;
  int R = 10;
  
  Repulse(){
  
  }
  
  void update(){
    x = R * cos(angle);
    y = R * sin(angle);
    angle = angle + speed;
  }
  
  void display(){
    fill(255);
    translate(x,y);
    sphere(50);
  }
}