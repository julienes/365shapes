Ball ball;
float r = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  ball = new Ball();
}

void draw(){
  r+=0.03;
  background(7,11,96);
  lights();
  spotLight(51, 102, 126, 50, 50, 200,0, 0, -1, 0, 200);
  translate(width/2, height/2);
  rotateY(r);
  rotateZ(r);
  for(int i = -60; i<=60; i+=40){
    pushMatrix();
    translate(0,0,i);
    ball.display();
    popMatrix();
  }
}