class Ball {
  PVector pos;
  PVector vel;
  PVector acc;
  float masse;
  float alpha = 255;
  
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
  alpha-=1;
  }
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void draw(){
    update();
    noStroke();
    fill(255, alpha);
    pushMatrix();
    translate(pos.x, pos.y);
    sphere(masse);
    popMatrix();
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