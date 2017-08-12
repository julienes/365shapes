class rectangle{
  float angle;
  float y;
  float speed = 0.1;
  rectangle(float _y,float _angle){
    y = _y;
    angle = _angle;
  }
  
  void display(){
    pushMatrix();
    rotateY(angle);
    rect(0,y,50,50);
    popMatrix();
    angle = angle + speed;
  }
}