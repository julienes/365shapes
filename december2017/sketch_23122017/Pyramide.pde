class Pyramide{
  float R;
  float z;
  float angle;
  boolean toRight;
  float speed;
  Pyramide(float _R, float _z, float a, float _speed){
    R = _R;
    z = _z;
    angle = a;
    speed = 0.01;
  }
  
  void display(){
    pushMatrix();
    rotateZ(angle);
    beginShape();
    for(int i = 0; i <= 3; i++){
      float angle = map(i,0,3,0,TWO_PI);
      float x = R * cos(angle);
      float y = R * sin(angle);
      vertex(x,y);
      vertex(0,0,z);
      vertex(x,y);
    }
    endShape();
    popMatrix();
  }
  void update(){
    if(toRight){
      angle+=speed;
      
      if(angle >= HALF_PI/2){
        toRight = false;
      }
    }else if(!toRight){
      angle-=speed;
      
      if(angle <= -HALF_PI/2){
        toRight = true;
      }
    }
  }
}