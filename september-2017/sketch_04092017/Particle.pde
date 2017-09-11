class Ball{
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  PVector pos = new PVector(spot.x, spot.y, spot.z);
  PVector target = new PVector(spot.x, spot.y, spot.z);
  PVector vel = PVector.random2D();
  PVector acc = new PVector();
  int s = 2;
  float maxspeed = 4;
  float maxforce = 0.8;
  PVector seek;
  PVector arrive;
  Ball(){}
  
  void behaviors(){
    arrive = arrive(target);
    PVector mouse = new PVector(0, 0, repulse.z);
    PVector flee = flee(mouse);
    arrive.mult(1);
    flee.mult(5);
    applyForce(arrive);
    applyForce(flee);
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
    point(pos.x, pos.y, pos.z);
  }
  
  PVector arrive(PVector target){
    PVector desired = PVector.sub(target,pos);
    float d = desired.mag();
    float speed = maxspeed;
    if(d < 120){
      speed = map(d, 0,120, 0, maxspeed);
    }
    desired.setMag(speed);
    PVector steer = PVector.sub(desired, vel);
    steer.limit(maxforce);
    return steer;
  }
  
  PVector flee(PVector target){
    PVector desired = PVector.sub(target,pos);
    float d = desired.mag();
    if(d < 120){
      desired.setMag(maxspeed);
      desired.mult(-1);
      PVector steer = PVector.sub(desired, vel);
      steer.limit(maxforce);
      return steer;
    }else{
     return new PVector(0,0);
    }
  }
}