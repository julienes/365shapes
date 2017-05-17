class Ball{
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  PVector pos = new PVector(random(100,400), random(100,400));
  PVector target = new PVector(spot.x, spot.y);
  PVector vel = PVector.random2D();
  PVector acc = new PVector();
  int s = 8;
  float maxspeed = 10;
  float maxforce = 0.2;
  PVector seek;
  PVector arrive;
  Ball(){}
  
  void behaviors(){
    arrive = arrive(target);
    applyForce(arrive);
  }
  
  void applyForce(PVector f){
    acc.add(f);
  }
  
  void update(){
    pos.add(vel);
    vel.add(acc);
    acc.mult(0);
  }
  
  void show(){
    stroke(255);
    strokeWeight(2);
    point(pos.x, pos.y);
  }
  
  PVector arrive(PVector target){
    PVector desired = PVector.sub(target,pos);
    float d = desired.mag();
    float speed = maxspeed;
    if(d < 100){
      speed = map(d, 0,100, 0, maxspeed);
    }
    desired.setMag(speed);
    PVector steer = PVector.sub(desired, vel);
    steer.limit(maxforce);
    return steer;
  }
  
  PVector seek(PVector target){
    PVector desired = PVector.sub(target,pos);
    desired.setMag(maxspeed);
    PVector steer = PVector.sub(desired, vel);
    steer.limit(maxforce);
    return steer;
  }
}