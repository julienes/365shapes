class Ball{
  PVector base = new PVector(random(-150,150), random(-150,150), random(-150,150));
  PVector move = new PVector(0,0,0);
  PVector acceleration;
  Ball(){
  
  }
  
  void move(){
    acceleration = PVector.random3D();
    move.add(acceleration);
    move.normalize();
    base.add(move);
    base.limit(90);
  }
  
  void display(){
    fill(255);
    stroke(255);;    ellipse(base.x, base.y, 1,1);
  }
}