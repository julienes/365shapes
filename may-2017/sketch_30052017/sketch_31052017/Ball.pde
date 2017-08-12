class Ball{
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  float s = random(100,200);
  float x = spot.x;
  float y = spot.y;
  PVector position = new PVector(x*s,y*s);
  PVector vel = new PVector(0,0);
  PVector acc;
  Ball(){
  
  }
  
  void move(){
   acc = PVector.random2D();
    vel.add(acc);
    vel.mult(0.5);
    position.add(vel);
  }
  
  void display(){
    stroke(255);
    ellipse(position.x,position.y,1,1);
  }
}