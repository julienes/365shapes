int t = 50;
float s = 10;
float rotation = 0;
float speed = 0.02;
boolean grow = true;
PVector[][] trompette;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  fill(255);
  trompette = new PVector[t+1][t+1];
}

void draw(){
  lights();
  update();
  background(6,7,175);
  translate(width/2, height/2);
  float turn = map(mouseX, 0, width, 0, TWO_PI);
  rotateY(turn);
  for(int i = 0; i<t+1; i++){
    float lat = map(i, 0, t, 0, TWO_PI);
    for(int j = 0; j<t+1; j++){
      float lon = map(j, 0, t, 0,TWO_PI);
      float x = (15*lat) * cos(lon);
      float y = (15*lat) * sin(lon);
      float z = s/lat;
      trompette[i][j] = new PVector(x, y, z);
    }
  }
  for (int i = 0; i < t; i++) {
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j < t+1; j++) {
      strokeWeight(1);
      PVector v1 = trompette[i][j];
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = trompette[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  rotation = rotation + speed;
}

void update(){
  
  if(grow){
    s+=0.5;
    if(s>=40){
      grow = false;
    }
  }
  if(!grow){
    s-=0.5;
    if(s<=10){
      grow = true;
    }
  }
}