Particles[] particles = new Particles[50];

void setup(){
  size(500,500, P3D);
  smooth();
  for(int i = 0; i<= particles.length-1; i++){
    particles[i] = new Particles(random(-5,5),random(-5,5),random(0,0.5));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2+50, height/2-50);
  for(int i = 0; i<= particles.length-1; i++){
    particles[i].update();
    particles[i].display();
  }
//  saveFrame("output/gol_####.png");
}