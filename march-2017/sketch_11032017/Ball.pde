class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  float masse;
  
  Ball(PVector p, PVector v, PVector a, float m){
    pos = p.get();
    vel = v.get();
    acc = a.get();
    masse = m;
  }
  
  void update(){
  border();
  vel.add(acc);
  pos.add(vel);
  acc.mult(0);
  }
  
  void draw(){
    update();
    fill(255);
    ellipse(pos.x,pos.y, masse, masse);
  }
  
  void border(){
    if(pos.x<0){
      pos.x = 0;
      vel.x*=-1;
    }
    if(pos.x >width){
      pos.x = width;
      vel.x*=-1;
    }
    if(pos.y >height-(masse/2)){
      pos.y = height-(masse/2);
      vel.y*=-1;
    }
    
  }
  
  void appliqueForce(PVector force){
    force.div(masse); //acceleration = force/masse --> formule force
    acc.add(force);
  }
  
  void appliqueViscositeForce(float c){
    c*=-1;
    PVector viscositeForce = PVector.mult(vel,c);
    appliqueForce(viscositeForce);
  }
}