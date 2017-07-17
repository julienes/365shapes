
float flying = 0;
PVector[][] globe;
int total = 250;
float ctr = random(10);
void setup() {
  size(600, 600, P3D);
  noStroke();
  fill(255);
  globe = new PVector[total+1][total+1];
}


void draw() {
  background(6,7,175);
  translate(width/2, height/2,0);
  rotateX(PI/3);
  lights();
  flying -= 0.0005;
  float yoff = flying;
  for (int i = 0; i < total+1; i+=5) {
    float xoff = flying;
    float c1 = map(noise(xoff,yoff), 0,1,0,50);
    for (int j = 0; j < total+1; j+=5) {
      float c2 = map(noise(xoff,yoff), 0,1,0,50);
      float x = 90*cos(c1)*cos(c2);
      float y = 120*cos(c1)*sin(c2);
      float z = 120*sin(c1);
      globe[i][j] = new PVector(x, y, z);
      pushMatrix();
      translate(x, y,z);
      box(10);
      popMatrix();
      xoff += 0.005;
    }
    yoff += 0.005; 
  }
  ctr += 0.04;
}