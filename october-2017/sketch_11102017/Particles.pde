class Particles {
  float alpha = 255;
  Particle[] particles = new Particle[10];
  Particles(){
    for(int i = 0; i < particles.length; i++){
      particles[i] = new Particle();
    }
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=0.5;
    for(int i = 0; i < particles.length; i++){
      particles[i].update1();
    }
  }
}