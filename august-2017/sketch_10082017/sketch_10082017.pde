PVector[][] globe;
float a = 60;
int b = 80;
int c = 60;
int total = 150;
float angle = 0;
float speed = 0.04;
boolean updating = true;

void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  fill(255);
  globe = new PVector[total+1][total+1];
}

void draw(){
  updateVar();
  background(6,7,175);
  translate(width/2, height/2);
  lights();
  rotateY(angle);
  rotateZ(angle);
  shapeB();
  angle = angle + speed;
  println(updating);
}

void shapeB(){
  for (int i = 0; i < total+1; i++) {
    float u = map(i, 0, total, 0, PI);
    for (int j = 0; j < total+1; j++) {
      float v = map(j, 0, total, 0, TWO_PI);
      float x = ((c*c)/a)*((cos(u)*cos(v))/(sin(v)*sin(v)+(c*c)*cos(v)*cos(v)*((cos(u)*cos(u))/(a*a)+(sin(u)*sin(u))/(b*b))));
      float y = ((c*c)/b)*((sin(u)*cos(v))/(sin(v)*sin(v)+(c*c)*cos(v)*cos(v)*((cos(u)*cos(u))/(a*a)+(sin(u)*sin(u))/(b*b))));
      float z = c*(sin(v)/(sin(v)*sin(v)+(c*c)*cos(v)*cos(v)*((cos(u)*cos(u))/(a*a)+(sin(u)*sin(u))/(b*b))));
      globe[i][j] = new PVector(x, y, z);
    }
  }
  
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
}

void updateVar(){
  if(updating){
    a+=1;
    if(a>=150){
      updating = false;
    }
  }
  if(!updating){
    a-=1;
    if(a<=50){
      updating = true;
    }
  }
}