float inc = 0.2;
float scl = 2;
float cols, rows;
float zoff = 0;

void setup(){
  size(500,500,P3D);
  cols = floor(width/scl);
  rows = floor(height/scl);
}

void draw(){
  background(35,53,193);
  translate(width/2,height/2);
  float yoff = 0;
  float r = 150;
  int total = 70;
  for(float i = 40; i<total; i++){
    float xoff = 0;
    float lon = map(i, 0, total, -PI, PI);
    for(float j = 0; j<total; j++){
      float angle = noise(xoff, yoff, zoff) * TWO_PI;
      float lat = map(j, 0, total, -HALF_PI, HALF_PI);
      PVector v =  PVector.fromAngle(angle);
      xoff += inc;
      stroke(255);
      strokeWeight(3);
      float x = r * sin(lon) * cos(lat);
       float y = r * sin(lon) * sin(lat);
       float z = r * cos(lon);
      pushMatrix();
      beginShape(POINTS);
      rotate(v.heading());
      vertex(x,y,z);
       endShape();
      popMatrix();
    }
    yoff+=inc;
    zoff +=0.0009;
  }
}