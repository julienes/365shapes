int total = 30;
Particles[] particles = new Particles[total];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i < total; i++){
    float r = map(i,0,total, 50,150);
    particles[i] = new Particles(i, r);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < total; i++){
    particles[i].display();
  }
}