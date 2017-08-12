class Ball{
  PVector position = new PVector(0,0,0);
  PVector base = new PVector(0,0,0);
  PVector acceleration;
  float x,y,z;
  PVector target;
  PVector target2 = new PVector(0, 0, 0);
  PVector v;
  float count = 0;
  boolean back = false;
  
  Ball(){
    
  }
  
  void update(){
    count++;
    if(!back){
      if(count<=150){
        square();
      }else{
        back = true;
        count = 0;
      }
    }
    
    if(back){
      if(count<=150){
        goBase();
      }else{
        back = false;
        count = 0;
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
    target = new PVector(random(-100,100),random(-100,100),random(-100,100));
    position.lerp(target,0.1);
  }
  
  void display(){
    pushMatrix();
    translate(position.x, position.y, position.z);
    ellipse(0,0,2,2);
    popMatrix();
  }
  
}