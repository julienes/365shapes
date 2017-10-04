class Lib{
  float speed = 0.02;
  int R = 100;
  int r = 50;
  float n = 10;
  float x, y, z;
  float t;
  boolean grow = true;
  Lib(float _t){
    t = _t;
  }
  
  void display(){
    pushMatrix();
      translate(x,y,z);
      sphere(20);
    popMatrix();
  }
  
  void courbe(){
    if(!grow){
    t = t + speed;
    if(t >= TWO_PI){
      grow = true;
    }
  }
  if(grow){
    t = t - speed;
    if(t <= 0){
      grow = false;
    }
  }
  x = (R + r * cos(n*t))*cos(t);
  y = (R + r * cos(n*t))*sin(t);
  z = r*sin(n*t);
  }
}