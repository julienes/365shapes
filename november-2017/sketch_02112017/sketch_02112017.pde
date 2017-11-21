int total = 30;
int c = 100;
int a = 40;
float angle = 0;
float speed = 0.04;
PVector[][] donuts;

void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(10);
  donuts = new PVector[total+1][total+1];
  for(int i = 0; i < total+1; i++){
    float v = map(i, 0, total, 0, TWO_PI);
      for(int j = 0; j < total+1; j++){
        float u = map(j, 0, total, 0, TWO_PI);
        float x = (c + a*cos(u)) * cos(v);
        float y = (c + a*cos(u)) * sin(v);
        float z = a * sin(u);
        donuts[i][j] = new PVector(x,y,z);
    }
  }
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotateY(angle);
  rotateX(angle);
  donut();
  sugar();
  angle = angle + speed;
}

void donut(){
  fill(255);
  noStroke();
  for(int i = 0; i < total; i++){
    beginShape(TRIANGLE_STRIP);
      for(int j = 0; j < total+1; j++){
        PVector v1 = donuts[i][j];
        vertex(v1.x, v1.y, v1.z);
        PVector v2 = donuts[i+1][j];
        vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
}

void sugar(){
  noFill();
  beginShape(LINES);
  for(int i = 0; i < total*2; i++){
    float v = map(i, 0, total*2, 0, TWO_PI);
      for(int j = 0; j < total*2; j++){
        float u = map(j, 0, total*2, 0, TWO_PI);
        float x = (100 + 40*cos(u)) * cos(v);
        float y = (100 + 40*cos(u)) * sin(v);
        float z = 40 * sin(u);
        if(i % 2 == 0 && j % 2 == 0){
          stroke(6,7,175);
        }else{
          stroke(255);
        }
        vertex(x,y,z);
    }
  }
  endShape();
}