class Ball{
  int r = int(random(0,tor.size()));
  PVector spot = tor.get(r);
  PVector pos = new PVector(0, 0, 0);
  PVector target = new PVector(spot.x, spot.y, spot.z);
  PVector vel = PVector.random3D();
  PVector acc = new PVector();
  int s = 8;
  float maxspeed =25;
  float maxforce = 0.3;
  PVector seek;
  PVector arrive;
  
  Ball(){
  
  }
  void behaviors(){
    arrive = arrive(target);
    PVector mouse = new PVector(mouseX, mouseY, spot.z);
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
    strokeWeight(2);
    beginShape(POINTS);
    vertex(pos.x,pos.y,pos.z);
    endShape();
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
  
  PVector flee(PVector target){
    PVector desired = PVector.sub(target,pos);
    float d = desired.mag();
    if(d < 50){
      desired.setMag(maxspeed);
      desired.mult(-1);
      PVector steer = PVector.sub(desired, vel);
      steer.limit(maxforce);
      return steer;
    }else{
     return new PVector(0,0, 0);
    }
  }
}