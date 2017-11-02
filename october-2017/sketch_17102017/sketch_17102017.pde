int total = 100;
float angle = 0;
float speed = 0.02;
PVector[][] cake;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  strokeWeight(60);
  cake = new PVector[total+1][total+1];
  for(int i = 0; i < total+1; i++){
    float u = map(i, 0, total, 0, TWO_PI);
    for(int j = 0; j < total+1; j++){
      float v = map(j, 0, total, 0, TWO_PI);
      float x = cos(u) * cos(v) * 150;
      float y = cos(u) * sin(v) * 150;
      float z = sin(u) * sin(u) * sin(u) * 100;
      cake[i][j] = new PVector(x, y, z);
    }
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(HALF_PI*0.8);
  rotateZ(angle);
  for (int i = 0; i < total; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < total+1; j++) {
      if(j%2 == 0){
        stroke(255);
      }else{
        stroke(6,7,175);
      }
      PVector v1 = cake[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = cake[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  angle = angle + speed;
}