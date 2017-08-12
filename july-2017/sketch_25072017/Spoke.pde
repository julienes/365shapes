class Spoke{
  float R1 = 100;
  float R2 = 130;
  float x1, y1, x2, y2;
  float angle, angle2;
  float speed = 0.05;
  Spoke(float _angle){
    angle = _angle;
    angle2 = _angle;
  }
  
  
  void update(){
    angle2 = angle2 + speed;
  }
  
  void display(){
    x1 = R1 * cos(angle2);
    y1 = R1 * sin(angle2);
    x2 = R2 * cos(angle);
    y2 = R2 * sin(angle);
    
    ellipse(x1, y1, 5, 5);
    ellipse(x2, y2, 10, 10);
    line(x1, y1, x2, y2);
  }
}