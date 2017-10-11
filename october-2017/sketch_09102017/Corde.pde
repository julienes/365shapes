class Corde{
  float angle;
  float x,y;
  float speed = 0.01;
  float R = 200;
  
  Corde(float _angle){
    angle = _angle;
  }
  
  void update(){
    x = R * cos(angle);
    y = R * sin(angle);
    angle = angle + speed;
  }
  
  void display(){
    bezier(-100, 0,  x, y,  x, y,  100, 0);
  }
}