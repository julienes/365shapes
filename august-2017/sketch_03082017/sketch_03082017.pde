Losange l = new Losange();
Pyramide p1 = new Pyramide();
Pyramide p2 = new Pyramide();
float angle = 0;
float speed = 0.05;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotateY(angle);
  l.display();
  l.update();
  pushMatrix();
  scale(0.3);
  losange();
  popMatrix();
  angle = angle + speed;
}


void losange(){
  pushMatrix();
      scale(1.4);
      translate(0,-100);
      rotateX(HALF_PI);
      p1.display();
    popMatrix();
    pushMatrix();
      scale(1.4);
      translate(0,100);
      rotateX(-HALF_PI);
      p2.display();
    popMatrix();
}