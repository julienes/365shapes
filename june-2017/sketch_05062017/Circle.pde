class Circle {
  float x1,y1,x2,y2,scalar, angle;
  int number;
  int s;
  Circle(int _number,float _angle, float _scalar, int _s){
    number = _number;
    angle = _angle;
    scalar = _scalar;
    s = _s;
  }
  
  void display(){
    pushMatrix();
    strokeWeight(s);
    if(number%2 == 0){
      stroke(255,100);
    }else{
      stroke(255);
    }
    x1 = sin(angle)*scalar;
    y1 = cos(angle)*scalar;
    x2 = sin(angle)*(scalar+20);
    y2 = cos(angle)*(scalar+20);
    beginShape(LINES);
      vertex(x1,y1);
      vertex(x2,y2);
    endShape();
    popMatrix();
  }
  
}