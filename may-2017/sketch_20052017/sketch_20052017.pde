import peasy.*;

PeasyCam cam;
float flying = 0;
PVector[][] globe;
int total = 450;
float ctr = random(10);
void setup() {
  size(600, 600, P3D);
  noStroke();
  fill(255);
  cam = new PeasyCam(this, 500);
  globe = new PVector[total+1][total+1];
}


void draw() {
  background(6,7,175);
  lights();
  float r = 10;
  flying -= 0.005;
  float yoff = flying;
  for (int i = 0; i < total+1; i+=5) {
    float xoff = flying;
    float lat = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j+=5) {
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      float noi = noise(x+1, y+1, ctr);
      float d = r + map(noi, 0,1, -2,2);
      globe[i][j] = new PVector(x*d, y*d, z*d);
      xoff += 0.5;
    }
    yoff += 0.5; 
  }
  ctr += 0.04;

  for (int i = 0; i < total; i+=5) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j+=10) {
      strokeWeight(1);
      PVector v1 = globe[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+5][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}