class Ball{
  PVector position;
  PVector vel = new PVector(0,0);
  PVector acc;
  Ball(float _x, float _y){
    position = new PVector(_x, _y);
  }
  
  void update(){
    acc = PVector.random2D();
    vel.add(acc);
    vel.mult(0.8);
    position.add(vel);
    position.limit(150);
  }
  void display(){
    ellipse(position.x,position.y,10,10);
  }
}