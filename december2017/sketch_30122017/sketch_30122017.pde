int total = 200;

PVector[][] globe;
int a = 20;
int b = 30;
int h = 8;
float angle = 0;
float speed = 0.2;

void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  globe = new PVector[total+1][total+1];
  for(int i = 0; i < total + 1; i++){
    float u = map(i,0,total,0,TWO_PI * 8);
    for(int j = 0; j < total + 1; j++){
      float v = map(j,0,total,0,TWO_PI * 8);
      float x = (a + b * cos(v)) * cos(u) + ((b*h) / sqrt(pow(a,2) + pow(h,2))) * sin(u) * sin(v);
      float y = (a + b * cos(v)) * sin(u) - ((b*h) / sqrt(pow(a,2) + pow(h,2))) * cos(u) * sin(v);
      float z = h*u + ((b*a)/(sqrt(pow(a,2) + pow(h,2)))) * sin(v);
      globe[i][j] = new PVector(x, y, z);
    }
  }
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2+200, -100);
  rotateX(PI/3);
  rotateZ(angle);
  //rotateY(PI/3);
  for (int i = 0; i < total; i++) {
    beginShape(TRIANGLE_STRIP);
    if(i % 2 == 0){
        fill(255);
      }else{
        fill(6,7,175);
      }
    for (int j = 0; j < total+1; j++) {
      PVector v1 = globe[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  angle += speed;
}