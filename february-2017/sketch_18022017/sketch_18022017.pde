float d;
float r = 0;
float t = 0;
void setup() {
  size(500, 500, P3D); 
}

void draw() {
  lights();
  spotLight(51, 102, 126, 50, 50, 200,0, 0, -1, 0, 200);
  t = t + 0.01;
  float n = noise(t);
   n = map(n, 0,1, 1,15);
  int detail = round(n);
  r+=0.03;
  background(6,7,175);
  stroke(255);
  fill(6,7,175);
  translate(width/2, height/2, 0);
  rotateX(r);
  rotateY(r);
  sphereDetail(detail);
  sphere(100);
}