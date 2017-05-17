import peasy.*;
PeasyCam cam;
void setup(){
  size(500,500, P3D);
  smooth();
  cam = new PeasyCam(this, 500);
}

void draw(){
  background(6,7,175);
  lights();
  float r = 200;
  int total = 130;
  for(int i = 0; i< total; i++){
    float lon = map(i, 0, total, -PI, PI);
     for(int j = 0; j< total; j++){
       float lat = map(j, 0, total, -HALF_PI, HALF_PI);
       float x = r * sin(lon) * cos(lat);
       float y = r * sin(lon) * sin(lat);
       float z = r * cos(lon);
       noFill();
       stroke(255);
       point(x,y,z);
     }
  }
  fill(255);
  noStroke();
  sphere(100);
}