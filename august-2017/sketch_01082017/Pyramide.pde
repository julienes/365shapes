class Pyramide{
  float x,y;
  float angle;
  Pyramide(float _x, float _y, float _angle){
    x = _x;
    y = _y;
    angle = _angle;
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotate(radians(angle));
    beginShape();
    vertex(10,-10);
    vertex(10,10);
    vertex(10,10);
    vertex(-10,10);
    vertex(-10,10);
    vertex(10,-10);
    endShape();
    popMatrix();
  }
}