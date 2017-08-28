class Square{
  float s;
  float angle;
  boolean grow = true;
  Square(float _s, float _angle){
    s = _s;
    angle = _angle;
  }
  
  void update(){
    if(grow){
      angle+=0.05;
      if(angle >= PI/2){
        grow = false;
      }
    }
    if(!grow){
      angle-=0.05;
      if(angle <= -PI/2){
        grow = true;
      }
    }
  }
  
  void display(){
    pushMatrix();
    rotate(angle);
    rect(0,0,s,s);
    popMatrix();
  }
}