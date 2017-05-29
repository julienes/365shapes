PVector[][] globe;
int total = 50;
float offset = 0;
float n = 8;
boolean grow = true;
float g = 10;
void setup() {
  size(600, 600, P3D);
  globe = new PVector[total+1][total+1];
  fill(255);
  stroke(6,7,175);
}


void draw() {
  update();
  background(6,7,175);
  lights();
  for (int i = 0; i < total+1; i++) {
    for (int j = 0; j < total+1; j++) {
      float x = cos(PI/n)*cos(PI/n*(2*floor(i)+1))-(2*i-2*floor(i)-1)*sin(PI/n)*sin(PI/n*(2*floor(j)+1));
      float y = cos(PI/n)*sin(PI/n*(2*floor(i)+1))+(2*i-2*floor(i)-1)*sin(PI/n)*cos(PI/n*(2*floor(j)+1));
      float z = i/g;
      globe[i][j] = new PVector(x*10, y*10, z);
    }
  }
  pushMatrix();
  translate(width/2, height/2,450);
  rotateY(PI/4);
  rotateX(PI/3);
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
  popMatrix();
}

void update(){
  if(grow){
    g+=0.1;
    if(g>=10){
      grow = false;
    }
  }
  if(!grow){
    g-=0.1;
    if(g<=2){
      grow = true;
    }
  }
}