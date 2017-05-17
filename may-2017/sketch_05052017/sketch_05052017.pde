PVector[][] globe;
int total = 50;
float offset = 0;
float m = 0;
float change = 0;
void setup() {
  size(600, 600, P3D);
  globe = new PVector[total+1][total+1];
}

float a = 1;
float b = 1;

float supershape(float theta, float m, float n1, float n2, float n3){
  float t1 = abs((1/a)*cos(m * theta /4));
  t1 = pow(t1, n2);
  float t2 =  abs((1/b)*sin(m *theta/4));
  t2 = pow(t2, n3);
  float t3 = t1 + t2;
  float r = pow(t3, -1/n1);
  return r;
}

void draw() {
  m = map(sin(change), -1, 1, 4, 20);
  change += 0.04;
  background(6,7,175);
  noStroke();
  fill(255);
  lights();
  float r = 100;
  for (int i = 0; i < total+1; i++) {
    float lat = map(i, 0, total, -HALF_PI, HALF_PI);
    float r2 = supershape(lat, m, 1, 1, 1);
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, -PI, PI);
      float r1 = supershape(lon, m, 100, 1, 1);
      float x = r * r1  * cos(lon) * r2 * cos(lat);
      float y = r * r1 * sin(lon) *  r2 * cos(lat);
      float z = r * r2 * sin(lat);
      globe[i][j] = new PVector(x, y, z);
    }
  }
  translate(width/2, height/2);
  rotateX(HALF_PI/2);
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