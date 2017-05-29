import peasy.*;

PeasyCam cam;
float flying = 0;
PVector[][] globe;
int total = 250;
float size = 0;
float alpha = 255;
boolean grow = true;

void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 500);
  globe = new PVector[total+1][total+1];
  noFill();
}


void draw() {
  background(6,7,175);
  lights();
  update();
  float r = 250;
  flying -= 0.005;
  float yoff = flying;
  for (int i = 0; i < total+1; i+=10) {
    float xoff = flying;
    float lat = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j+=10) {
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      globe[i][j] = new PVector(x, y, z);
      xoff += 0.5;
    }
    yoff += 0.5; 
  }

  for (int i = 0; i < total; i+=10) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j+=10) {
      strokeWeight(1);
      PVector v1 = globe[i+10][j];
      pushMatrix();
      translate(0,0,v1.z);
      ellipse(v1.x, v1.y, size,size);
      popMatrix();
    }
    endShape();
  }
}

void update() {
  if(grow){
    alpha-=3;
    size+=1;
    if(size>=85){
      grow = false;
    }
  }
  if(!grow){
    size=0;
    alpha = 255;
    grow = true;
  }
  stroke(255, alpha);
}