ArrayList<Particles>particles;
//PImage bg;



void setup(){
  size(500,500);
  smooth();
  noFill();
  //bg = loadImage("Gradient.jpg");
  particles = new ArrayList<Particles>();
}

void draw(){
  background(6,7,175);
  for(int i = 0; i < 15; i++){
    particles.add(new Particles());
  }

  for(int i = particles.size()-1; i >= 0; i--){
    Particles p = particles.get(i);
    p.display();
    
    if(p.isDisappear()){
      particles.remove(i);
    }
  }
}