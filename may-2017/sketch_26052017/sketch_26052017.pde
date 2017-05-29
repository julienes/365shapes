float r = HALF_PI,r2 = 0;
float n = 3;
void setup(){
  size(500,500,P3D);
  smooth();
  stroke(255);
  strokeWeight(10);
}

void draw(){
  r+=0.05;
  r2+=0.05;
  if(r2>=PI){
    r2 = 0;
    n+=1;
    if(n==5){
      n=100;
    }
    if(n>100){
      n = 3;
    }
  }
  println(n);
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(r);
  gon(n);
}

void gon(float n){
  beginShape(LINES);
  for(float u = 0; u<=100; u+=0.01){
  float x = cos(PI/n)*cos(PI/n*(2*floor(u)+1))-(2*u-2*floor(u)-1)*sin(PI/n)*sin(PI/n*(2*floor(u)+1));
  float y = cos(PI/n)*sin(PI/n*(2*floor(u)+1))+(2*u-2*floor(u)-1)*sin(PI/n)*cos(PI/n*(2*floor(u)+1));
  vertex(x*100,y*100);
  }
  endShape();
}