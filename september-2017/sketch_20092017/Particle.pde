class Ball{
  PVector pos = new PVector(random(-50,50), height/2);
  PVector target = new PVector(0, -500);
  PVector vel = new PVector(0,0);
  PVector acc = new PVector(1,1);
  int s = 8;
  float maxspeed = 5;
  float maxforce = 0.5;
  PVector seek;
  PVector arrive;
  float alpha = 255;
  Ball(){}
  
  void behaviors(){
    arrive = arrive(target);
    PVector mouse = new PVector(repulse.x, repulse.y);
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
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void show(){
    alpha-=2.2;
    stroke(255, alpha);
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
     return new PVector(0,0);
    }
  }
}