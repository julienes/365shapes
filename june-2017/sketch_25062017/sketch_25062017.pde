float a = 20;
float r = 0;
int total  = 100;
PVector[][] hole;
int count = 0;
int count2 = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(4);
  hole = new PVector[total+1][total+1];
}

void draw(){
  background(6,7,175);
  fill(255);
  r+=0.05;
  translate(width/2, 350);
  //rotateY(PI/-3);
  rotateX(0.7);
  //rotateZ(r);
  beginShape(POINTS);
 for(int i = 0; i<=total; i++){
   float u = map(i,0,total,0,PI);
   for(int j = 0; j<=total; j++){
     float v = map(j,0,total,0,TWO_PI);
     float x = a*((exp(u)+exp(-u))/4)*cos(v);
     float y = a*((exp(u)+exp(-u))/4)*sin(v);
     float z = 50*(u);
     vertex(x,y,z);
     hole[i][j] = new PVector(x, y, z);
   }
 }
 endShape();
 if(count2 >=100){
   count++;
   count2 = 0;
 }else{
   count2++;
 }
 PVector v1 = hole[count][count2];
 fill(255,0,0);
 noStroke();
 pushMatrix();
 translate(0,0,v1.z);
 ellipse(v1.x, v1.y, 10,10);
 popMatrix();
}