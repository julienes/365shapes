class Square{
  float angle;
  float z;
  float speed = 0.05;
  boolean grow = true;
  Square(float _angle, float _z){
    angle = _angle;
    z = _z;
  }
  void update(){
    if(grow){
      angle = angle + speed;
      if(angle >= PI){
        grow = false;
      }
    }
    if(!grow){
      angle = angle - speed;
      if(angle <= -PI){
        grow = true;
      }
    }
    rotateZ(angle);
  }
  
  void display(){
    pushMatrix();
    update();
    translate(0,0,z);
    rect(0,0,50,50);
    popMatrix();
  }
}