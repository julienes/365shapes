 float r;
 float r2;
float t = 0;
float count;
void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
}

void draw(){
  t+=0.01;
  count++;
  translate(width/2, height-150);
  rotateY(t);
  background(6,7,175);
  scale(0.5);
  branch(-100);
}

void branch(float y2){
  float n = QUARTER_PI/2;
  if(count<20){
  r2 = random(-QUARTER_PI, QUARTER_PI);
  r = random(-QUARTER_PI, QUARTER_PI);
  }
  line(0,0,0,y2);
  if(y2<20){
    y2+=10;
    pushMatrix();
      strokeWeight(1);
      translate(0,y2);
      rotateX(r);
      rotateZ(n);
      branch(y2);
    popMatrix();
    pushMatrix();
      strokeWeight(1);
      translate(0,y2);
      rotateX(r2);
      rotateZ(-n);
      branch(y2);
    popMatrix();
  }
   strokeWeight(10);
}

void mousePressed(){
  count = 0;
}