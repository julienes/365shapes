ArrayList<Particles> particles;
int count = 0;
boolean restart = false;

void setup(){
  size(500,500);
  smooth();
  noiseSeed(24);
  particles = new ArrayList<Particles>();
  stroke(255);
}

void draw(){
  background(6,7,175);
  particles.add(new Particles());
  for(int i = particles.size()-1; i >= 0; i --){
    Particles p = particles.get(i);
    p.display();
    if(p.isDead()){
      particles.remove(i);
    }
  }
}