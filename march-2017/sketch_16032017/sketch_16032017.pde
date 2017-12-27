import peasy.*;
import processing.pdf.*;
PeasyCam cam;
Cylindre[] c = new Cylindre[5];

void setup(){
  size(500,500,P3D);
  smooth();
  cam = new PeasyCam(this, 0, 0, 0, 500);
  cam.setMinimumDistance(500);
  cam.setMaximumDistance(500);
  for(int i = 0; i<=c.length-1; i++){
    float n = map(i, 0, c.length-1, 0, PI);
    c[i] = new Cylindre(n);
  }
  
}

void draw(){
  lights();
  background(6,7,175);
  stroke(255);
  noFill();
  for(int i = 0; i<=c.length-1; i++){
  c[i].display();
  }
}