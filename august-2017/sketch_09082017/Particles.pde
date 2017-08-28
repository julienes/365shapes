class Particles{
  ArrayList<Particle>particle;
  float x,y,z;
  float t;
  int count = 0;
  boolean drawing = true;
  Particles(float _x, float _y, float _t){
    particle = new ArrayList<Particle>();
    x = _x;
    y = _y;
    t = _t;
  }
  
  void update(){
    t+=0.03;
    x = x + (4 + cos(3*t)) * cos(2*t)*1.2;
    y = y + (4 + cos(3*t)) * sin(2*t)*1.2;
    z = 2 * sin(3*t);
  }
  
  void display(){
    updateCount();
    if(drawing){
      particle.add(new Particle(x,y,z));
    }
    for(int i = particle.size()-1; i>0; i--){
      Particle p = particle.get(i);
      p.display();
      if(p.isDead()){
        particle.remove(i);
      }
    }
  }
  
  void updateCount(){
    if(t>=15){
      drawing = false;
      count++;
      if(count>=200){
        count = 0;
        t = 0;
      }
    }
    
    if(count == 0){
      drawing = true;
    }
  }
}  