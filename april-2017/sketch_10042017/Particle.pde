class Particle{
  PVector pos;
  PVector vel;
  PVector acc = new PVector(0,0);
  boolean firework;
  int lifespan = 255;
  Particle(float x, float y, boolean _firework){
    firework = _firework;
    pos = new PVector(x,y);
    if(firework){
      vel = new PVector(0,random(-10,-5));
    }else{
      vel = PVector.random2D();
      vel.mult(random(1,6));
    }
  }
   
  void applyForce(PVector force){
    acc.add(force);
  }
  
  void update(){
    if(!firework){
      vel.mult(0.98);
      lifespan-=4;
    }
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
  }
  boolean done(){
    if(lifespan<0){
      return true;
    }else{
      return false;
    }
  }
  void show(){
    if(!firework){
    stroke(255,lifespan);
    }else{
      stroke(255);
    }
    point(pos.x, pos.y);
  }
}