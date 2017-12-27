int total = 15;
Particles[] particles = new Particles[total];
float angle = 0;
float speed = 0.01;
void setup(){
  size(500,500, P3D);
  smooth();
  for(int i = 0; i < total; i++){
    float r = map(i,0,total, 100,150);
    particles[i] = new Particles(i, r);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(angle);
  for(int i = 0; i < total; i++){
    particles[i].display();
  }
  lights();
  noStroke();
  fill(255);
  sphere(30);
  angle+=speed;
}