PVector[][] globe;
int total = 35;
float r=0;
float speed = 0;
boolean acc = false;
void setup() {
  size(600, 600, P3D);
  globe = new PVector[total+1][total+1];
}

void draw() {
  translate(width/2, height/2);
  rotateX(QUARTER_PI);
  background(35,53,193);
  stroke(255);
  noFill();
  lights();
  spin();
  rotateZ(r);
  float r = 100;
  for (int i = 0; i < total+1; i++) {
    float lat = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j++) {
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = r * sin(lat) * cos(lon);
      float y = r * sin(lat) * sin(lon);
      float z = r * cos(lat);
      globe[i][j] = new PVector(x, y, z);
    }
  }

  for (int i = 0; i < total; i++) {
    beginShape(QUADS);
    for (int j = 0; j < total+1; j++) {
      PVector v1 = globe[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}

void spin(){
  if(acc == false){
   speed = speed + 0.001;
   if(speed> 10){
     acc = true;
   }
 }
 if(acc == true){
   speed = speed - 0.001;
   if(speed< 0){
     acc = false;
   }
 }
 r=r+speed;
}