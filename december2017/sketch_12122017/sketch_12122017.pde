ArrayList<Particles> particles;
int count = 0;
boolean restart = false;

void setup(){
  size(500,500);
  smooth();
  particles = new ArrayList<Particles>();
  stroke(255);
}

void draw(){
  background(6,7,175);
  stroke(255);
  strokeWeight(1);
  particles.add(new Particles());
  for(int i = particles.size()-1; i >= 0; i --){
    Particles p = particles.get(i);
    p.display();
    if(p.isDead()){
      particles.remove(i);
    }
  }
  strokeWeight(120);
  stroke(6,7,175);
  noFill();
  ellipse(width/2, height/2, 350, 350);
}