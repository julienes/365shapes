float a = 15;
float r = 0;
int total  = 20;
PVector[][] hole;
int count = 0;
int count2 = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(1);
  noFill();
  hole = new PVector[total+1][total+1];
  stroke(255);
  rotateX(0.7);
 for(int i = 0; i<total+1; i++){
   float u = map(i,0,total,0,PI);
   for(int j = 0; j<total+1; j++){
     float v = map(j,0,total,0,TWO_PI);
     float x = a*((exp(u)+exp(-u))/4)*cos(v);
     float y = a*((exp(u)+exp(-u))/4)*sin(v);
     float z = 50*(u);
     hole[i][j] = new PVector(x, y, z);
   }
 }
}

void draw(){
  background(6,7,175);
  lights();
  r+=0.5;
  translate(width/2-50, height/2);
  rotateY(0.4);
  rotateZ(r);
 for(int i = 0; i< total;i++){
   beginShape(TRIANGLE_STRIP);
   for(int j = 0; j< total+1;j++){
     PVector v1 = hole[i][j];
     vertex(v1.x,v1.y,v1.z);
     PVector v2 = hole[i+1][j];
     vertex(v2.x,v2.y,v2.z);
   }
   endShape();
 }
}