float n = 4;
float x,y,z;
float r;
boolean grow = true;
PVector[][] structure;
int total = 100;

float zz = 10;

void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  fill(255);
  structure = new PVector[total+1][total+1];
}


void update(){
  if(grow){
    zz+=0.1;
    if(r>=TWO_PI){
      grow = false;
      r=0;
    }
  }
  if(!grow){
    zz-=0.1;
    if(r>=TWO_PI){
      grow = true;
      r=0;
    }
  }
}


void draw(){
  lights();
  background(6,7,175);
  r+=0.02;
  update();
  translate(width/2, height/2);
  rotateX(r);
  rotateY(r);
  for (int i = 0; i < total+1; i++) {
    float lat = map(i, 0, total, 0, TWO_PI);
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, 0, PI);
      x = lon*cos(lat)*40;
      y = lon*sin(lat)*40;
      z = zz * cos(n*lat);
      point(x,y,z);
      structure[i][j] = new PVector(x, y, z);
    }
  }
  
  for (int i = 0; i < total; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j++) {
      strokeWeight(1);
      PVector v1 = structure[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = structure[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}