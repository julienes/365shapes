class Ball{
  PVector position = new PVector(random(-150,150), random(-150,150),random(-100,100));
  PVector vel = new PVector(0,0,0);
  PVector acc;
  Ball(){
  
  }
  
  void update(){
    acc = PVector.random3D();
    vel.add(acc);
    vel.normalize();
    vel.mult(2);
    position.add(vel);
    position.limit(150);
  }
  void display(){
    //ellipse(position.x,position.y,10,10);
  }
}