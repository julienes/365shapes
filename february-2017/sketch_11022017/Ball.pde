class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  float masse;
  float G = 0.9;
  
  Ball(PVector p, PVector v, PVector a, float m){
    pos = p.get();
    vel = v.get();
    acc = a.get();
    masse = m;
  }
  
  void update(){
  vel.add(acc);
  pos.add(vel);
  acc.mult(0);
  }
  
  void draw(){
    update();
    ellipse(pos.x,pos.y, masse, masse);
  }
  
  
  void appliqueForce(PVector force){
    force.div(masse); //acceleration = force/masse --> formule force
    acc.add(force);
  }
  
  PVector getGraviteForce(Ball ball){
    PVector direction = PVector.sub(pos, ball.pos);
    float distance = direction.mag();
    distance = constrain(distance, 5.0, 25.0);
    direction.normalize();
    float force = (G * masse * ball.masse) / (distance*distance);
    direction.mult(force);
    return direction;
  }
}