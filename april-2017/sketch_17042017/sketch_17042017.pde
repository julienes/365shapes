
int t = 100;
float rotation = 0;
float speed = 0.02;
PVector[][] egg;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  egg = new PVector[t+1][t+1];
  for(int i = 0; i<t+1; i++){
    float lat = map(i, 0, t, -PI, PI);
    for(int j = 0; j<t+1; j++){
      float lon = map(j, 0, t, -PI,PI);
      float x = ((1+(0.2*lon))*cos(lat)*sin(lon))*50;
      float y = ((1+(0.2*lon))*sin(lat)*sin(lon))*50;
      float z = (1.65*cos(lon))*50;
      egg[i][j] = new PVector(x, y, z);
    }
  }
}

void draw(){
  lights();
  background(6,7,175);
  fill(255);
  translate(width/2, height/2);
  rotateY(rotation);
  rotateX(rotation);
  for (int i = 0; i < t; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < t+1; j++) {
      strokeWeight(1);
      PVector v1 = egg[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = egg[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  rotation = rotation + speed;
}