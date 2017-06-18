class Fireworks{
  Particle firework; 
  boolean exploded = false;
  ArrayList<Particle>particles;
  Fireworks(){
    firework = new Particle(random(100,400),400, true);
    particles = new ArrayList<Particle>();
  }
  
  
  boolean done(){
    if(exploded && particles.size() == 0){
      return true;
    }  else{
      return false;
    }
  }
  
  void update(){
    if(!exploded){
      firework.applyForce(gravity);
      firework.update();
      if(firework.vel.y>=0){
        exploded = true;
        exploded();
      }
    }
    for(int i = particles.size()-1; i>=0; i--){
      Particle p = particles.get(i);
      p.applyForce(gravity);
      p.update();
      if(p.done()){
        particles.remove(i);
      }
    }
  }
  void exploded(){
    for(int i = 0; i<500; i++){
      particles.add(new Particle(firework.pos.x, firework.pos.y, false));
    }
  }
  
  void show(){
    if(!exploded){
       firework.show();
    }
    for(int i = 0; i<particles.size(); i++){
      Particle p = particles.get(i);
      p.show();
    }
  }
}