class Line{
  float x, y;
  float x2 = 125;
  float y2 = 250;
  float angle = 0;
  float speed = 0.05;
  Line(){
  }
  
  void move(){
    x = sin(angle)*150;
    y = cos(angle)*150;
    x2 = sin(angle)*150;
    y2 = cos(angle)*150;
    angle = angle + speed;
  }
  
  void display(){
    beginShape();
    curveVertex(-x2,y);
    curveVertex(-x2,y);
    curveVertex(-75,-50);
    curveVertex(-25,-25);
    curveVertex(25,-25);
    curveVertex(75,-50);
    curveVertex(x2,-y2);
    curveVertex(x2,-y2);
    endShape();
  }
}