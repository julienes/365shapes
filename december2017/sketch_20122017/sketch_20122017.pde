PVector[][] cylinder;
int total = 150;
float r = 80;
float angle = 0;
float speed = 0.1;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  cylinder = new PVector[total+1][total+1];
  for (int i = 0; i < total+1; i++) {
    float lon = map(i, 0, total, 0, TWO_PI);
    for (int j = 0; j < total+1; j++) {
      float lat = map(j, 0, total, 0, TWO_PI);
      float x = r * cos(lat - lon);
      float y = r * sin(lat - lon);
      float z = (lon + lat) * 20;
      cylinder[i][j] = new PVector(x, y, z);
    }
  }
}

void draw(){
  background(6,6,175);
  translate(width/2, height/2 + 120, 100);
  rotateX(PI/2);
  rotateZ(angle);
  for(int i = 0; i<total; i++){
    beginShape(TRIANGLE_STRIP);
    for(int j = 0; j<total+1; j++){
     if(j % 3 == 0){
       stroke(6,7,175);
     }else{
       stroke(255);
     }
     
     PVector v = cylinder[i][j];
      vertex(v.x, v.y, v.z);
      PVector v2 = cylinder[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  angle+=speed;
}