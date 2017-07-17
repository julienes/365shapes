float angle;
float speed = 0.05;

void setup(){
  size(500,500,P3D);
  smooth();
  fill(255);
  strokeWeight(2);
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  angle = angle+speed;
  rotateY(angle);
  for(int i = -150; i<= 150; i+=10){
    float n = map(i,-150,150,0,TWO_PI);
    noStroke();
    pushMatrix();
    rotateY(n);
    translate(0,i);
    pushMatrix();
    translate(-50,0);
    sphere(5);
    popMatrix();
    pushMatrix();
    translate(50,0);
    sphere(5);
    popMatrix();
    stroke(255);
    line(-50,0,50,0);
    popMatrix();
  }
}