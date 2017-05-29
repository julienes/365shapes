PVector[][][] globe;
int total = 150;
float r;
float speed = 0.05;
boolean acc = false;
void setup() {
  size(600, 600, P3D);
  globe = new PVector[total+1][total+1][200];
}

void draw() {
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(r);
  rotateY(r);
  stroke(255);
  noFill();
  lights();
  for (int i = 0; i < total+1; i+=10) {
    for (int j = 0; j < total+1; j+=10) {
      for(int k = 0; k < 200; k += 50){
      float x = i;
      float y = j;
      float z = k;
      globe[i][j][k] = new PVector(x, y, z);
      }
    }
  }

  for (int i = 0; i < total; i+=10) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j+=10) {
      for (int z = 0; z < 200; z+=50) {
      PVector v1 = globe[i][j][z];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i][j][z];
      vertex(v2.x+1, v2.y+1, v2.z);
      }
    }
    endShape();
  }
  r= r + speed;
}