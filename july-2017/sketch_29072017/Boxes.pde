class Boxes {
  PVector position;
  PVector base = new PVector(0,0,0);
  PVector acceleration;
  float x,y,z;
  PVector target;
  PVector target2 = new PVector(0, 0, 0);
  PVector v;
  float count = 0;
  boolean back = false;
  
  Boxes(float x, float y, float z){
    position = new PVector(x,y,z);
    target = new PVector(x,y,z);
  }
  
  void update(float r){
    if(!back){
      if(r<=HALF_PI){
        square();
      }else{
        back = true;
        r = 0;
      }
    }
    
    if(back){
      if(r<=HALF_PI){
        goBase();
      }else{
        back = false;
        r = 0;
      }
    }
  }
  
  void square(){
      acceleration = PVector.random3D();
      base.add(acceleration);
      base.normalize();
      base.mult(3);
      target2.add(base);
      target2.x = constrain(target2.x, -100, 100);
      target2.y = constrain(target2.y, -100, 100);
      target2.z = constrain(target2.z, -100, 100);
      position.lerp(target2,0.1);
  }
  
  void goBase(){
    position.lerp(target,0.1);
  }
  
  void display(){
    pushMatrix();
     translate(position.x,position.y,position.z);
     box(10);
    popMatrix();
  }
}