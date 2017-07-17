float n = 7;
float x,y,z;
float r;
boolean grow = true;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(2);
  noFill();
}

void draw(){
  background(6,7,175);
  r+=0.03;
  //update();
  translate(width/2, height/2);
  rotateZ(r);
  for(float lon = 0; lon<=PI; lon+=0.03){
    for(float lat = 0; lat<=TWO_PI; lat+=0.03){
      x = lon*cos(lat)*40;
      y = lon*sin(lat)*40;
      z = 50 * cos(n*lat);
      point(x,y,z);
    }
  }
}