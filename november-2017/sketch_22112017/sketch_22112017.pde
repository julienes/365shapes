ArrayList<Particle>particle;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  particle = new ArrayList<Particle>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  if(frameCount%10 == 0){
    particle.add(new Particle());
  }
  
  for(int i = 0; i < particle.size(); i++){
    Particle p = particle.get(i);
    float a = map(i,0,30,0,255);
    p.display();
    if(i > 1){
      Particle p1 = particle.get(i-1);
      stroke(255, a);
      line(p1.location.x, p1.location.y, p.location.x, p.location.y); 
    }
    
    if(particle.size() >= 30){
      particle.remove(0);
    }
  }
}