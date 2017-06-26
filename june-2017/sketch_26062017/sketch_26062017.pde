float a = 20;
float r = 0;
int total  = 105;
PVector[][] hole;
int count = 0;
int count2 = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(2);
  hole = new PVector[total+1][total+1];
  
  fill(255);
  stroke(255);
  translate(width/2, 350);
  rotateX(0.7);
  beginShape(POINTS);
 for(int i = 0; i<=total; i+=3){
   float u = map(i,0,total,0,PI);
   for(int j = 0; j<=total; j+=3){
     float v = map(j,0,total,0,TWO_PI);
     float x = a*((exp(u)+exp(-u))/4)*cos(v);
     float y = a*((exp(u)+exp(-u))/4)*sin(v);
     float z = 50*(u);
     hole[i][j] = new PVector(x, y, z);
   }
 }
 endShape();
}

void draw(){
  background(6,7,175);
  lights();
  r+=0.1;
  translate(width/2, 350);
  rotateX(0.7);
  rotateZ(r);
 for(int i = 0; i<=total-1;i+=3){
   for(int j = 0; j<=total-1;j+=3){
     PVector v1 = hole[j][i];
     if(j%2==1){
     fill(255);
     }else{
     fill(6,7,175);
     }
     noStroke();
     pushMatrix();
     translate(v1.x,v1.y,v1.z);
     ellipse(0,0,i/3,i/3);
     popMatrix();
   }
 }
}