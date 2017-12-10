class Particles {
  float alpha = 255;
  Particle[] particles = new Particle[20];
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
    alpha-=1;
    for(int i = 0; i < particles.length; i++){
      particles[i].update1();
    }
  }
}