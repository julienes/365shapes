ArrayList<Particle>particles;

void setup(){
  size(500,500);
  smooth();
  particles = new ArrayList<Particle>();
  for(int x = 150; x<=350; x+=10){
    for(int y = 150; y<=350; y+=10){
      particles.add(new Particle(x,y));
    }
  }
}


void draw(){
  background(6,7,175);
  noStroke();
  for(Particle p : particles){
    p.update();
    p.display();
  }
  stroke(255);
  for(int x = 100; x<=400; x+=10){
    for(int y = 100; y<=400; y+=10){
      point(x,y);
    }
  }
}