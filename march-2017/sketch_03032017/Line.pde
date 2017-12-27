class Line{
  float x, y;
  float x2 = 250;
  float y2 = 250;
  float angle = 0;
  float speed = 0.09;
  Line(){
  }
  
  void move(){
    x = sin(angle)*100;
    y = cos(angle)*100;
    x2 = sin(angle)*100;
    y2 = cos(angle)*100;
    angle = angle + speed;
  }
  
  void display(){
    stroke(255);
    strokeWeight(5);
    beginShape();
    curveVertex(-125,y);
    curveVertex(-125,y);
    curveVertex(-75,-50);
    curveVertex(-25,-25);
    curveVertex(25,-25);
    curveVertex(75,-50);
    curveVertex(125,-y2);
    curveVertex(125,-y2);
    endShape();
  }
}