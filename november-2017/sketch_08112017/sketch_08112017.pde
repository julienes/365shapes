PVector[][] globe;
PVector[] location;
int total = 20;
int num = 100;
int R = 80;
int n = 8;
int alpha = 0;
PVector v2;
float angle = 0;
float speed = 0.02;

void setup(){
  size(500,500, P3D);
  smooth();
  fill(255);
  noStroke();
  location = new PVector[num];
  globe = new PVector[total+1][total+1];
  for (int i = 0; i < total+1; i++) {
    float lat = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = 100 * cos(lat) * sin(lon);
      float y = 100 * sin(lat) * sin(lon);
      float z = 100 * cos(lon);
      globe[i][j] = new PVector(x, y, z);
    }
  }
  
  for(int i = 0; i < num; i++){
    float t = map(i, 0, num, 0, TWO_PI);
    float x = R * cos(n*t)*cos(t);
    float y = R*cos(n*t) *sin(t);
    float z = R*sin(n*t);
    location[i] = new PVector(x,y,z);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  particle();
  rotateY(PI/3);
  for (int i = 0; i < total; i++) {
    for (int j = 0; j < total+1; j++) {
      strokeWeight(1);
      PVector v1 = globe[i][j];
      float d = dist(v1.x, v1.y, v1.z, v2.x, v2.y, v2.z);
      pushMatrix();
      translate(v1.x, v1.y, v1.z);
      sphere(d/80);
      popMatrix();
    }
    endShape();
  }
  angle+=speed;
}


void particle(){
  v2 = location[alpha];
  pushMatrix();
  translate(v2.x, v2.y, v2.z);
  sphere(10);
  popMatrix();
  alpha++;
  if(alpha >= 100){
    alpha = 0;
  }
}  