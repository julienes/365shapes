class Sphera{
  PVector position = new PVector(random(100),random(100), random(-50,50));
  PVector vel = new PVector(0,0,0);
  PVector acc;
  
  Sphera(){
  
  }
  
  void update(){
    acc = PVector.random3D();
    vel.add(acc);
    vel.normalize();
    vel.mult(1.5);
    position.add(vel);
    position.limit(100);
  }
  
  void display(){
    noStroke();
    fill(255);
    pushMatrix();
    translate(0,0, position.z);
    ellipse(position.x, position.y, 2,2);
    popMatrix();
  }
}