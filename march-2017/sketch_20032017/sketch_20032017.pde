import peasy.*;

PeasyCam cam;
float flying = 0;
PVector[][] globe;
int total = 150;
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 500);
  globe = new PVector[total+1][total+1];
}


void draw() {
  background(6,7,175);
  noStroke();
  fill(255);
  lights();
  float r = 250;
  flying -= 0.005;
  float yoff = flying;
  for (int i = 0; i < total+1; i++) {
    float xoff = flying;
    float lat = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      float n = map(noise(xoff,yoff), 0,1,-1,1);
      globe[i][j] = new PVector(x*n, y*n, z*n);
      xoff += 0.5;
    }
    yoff += 0.5; 
  }

  for (int i = 0; i < total; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j++) {
      strokeWeight(1);
      PVector v1 = globe[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}