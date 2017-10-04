float n = 2;
float x,y,z;
float angle = 0;
float speed = 0.03;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(1);
  noFill();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle);
  beginShape();
  for(float lon = 0; lon<=TWO_PI; lon+=0.1){
    for(float lat = 0; lat<=TWO_PI; lat+=0.1){
      x = lon*cos(lat)*20;
      y = lon*sin(lat)*20;
      z = 50 * cos(n*lat);
      vertex(x,y,z);
    }
  }
  endShape();
  angle = angle + speed;
}