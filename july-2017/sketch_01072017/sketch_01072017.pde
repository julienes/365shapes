PVector[][] globe;
float r = 120;
float rot = 0;
int total = 10;
int num = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  noFill();
  globe = new PVector[total+1][total+1];
  for(int i = 0; i< total+1; i++){
    float lon = map(i, 0, total, 0, TWO_PI);
     for(int j = 0; j< total+1; j++){
       float lat = map(j, 0, total, 0, TWO_PI);
       float x = (r/2)*(cos(lon)+cos(lat));
       float y = (r/2)*(sin(lon)+sin(lat));
       float z = r*sin((lon-lat)/2);
        globe[i][j] = new PVector(x, y, z);
     }
  }
}

void draw(){
  rot+=0.02;
  lights();
  translate(width/2, height/2);
  rotateY(rot);
  rotateX(rot);
  background(6,7,175);
  //fill(255);
  //lights();
  noFill();
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
  fill(255);
  for (int i = 0; i < total; i++) {
    for (int j = 0; j < total+1; j++) {
      num++;
      PVector v1 = globe[i][j];
      pushMatrix();
      translate(v1.x, v1.y, v1.z);
      rotateX(rot*5);
      if(num%2 == 1){
        box(10);
      }else{
        box(20);
      }
      popMatrix();
    }
  }
}