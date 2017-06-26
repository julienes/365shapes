float u,v;
float x,y;
float rho;
float theta;
float z;
float a = 100;
float s = 0.5;
float r = 0;
float count;

void setup(){
  size(500,500,P3D);
  smooth();
  stroke(255);
  noFill();
}
void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  count++;
  if(count>50){
  r+=0.1;
  if(r>=TWO_PI){
    count = 0;
  }
  }
  rotateX(r);
  rotateY(r);
  scale(0.6);
  for(float u = 0; u<=TWO_PI; u+=0.09){
   for(float v = 0; v<=TWO_PI; v+=0.09){
      rho = a*(2*sin(v)*sqrt(2+2*sin(u)*sin(u))/(2-sin(v)*sin(v)*cos(u)*cos(u)));
      theta = -(u/sqrt(2))+atan(sqrt(2)*tan(u));
      z = 40*(log(tan(v/2)+(4*cos(v))/(2-sin(v)*sin(v)*cos(u)*cos(u))));
      x = rho*cos(theta);
      y = rho*sin(theta);
      pushMatrix();
      translate(0,0,z);
      ellipse(x,y,10,10);
      popMatrix();
    }
  }
}