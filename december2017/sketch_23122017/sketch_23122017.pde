int total = 45;
Pyramide[] pyramide = new Pyramide[total];

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(1);
  noFill();
  for(int i = 0; i < total; i++){
    float a = map(i,0,total,-HALF_PI/2, HALF_PI/2);
    float speed = map(i,0,total,0.01,0.05);
    pyramide[i] = new Pyramide(i*4, i * 5, a, speed);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2+100);
  rotateX(HALF_PI);
  rotateZ(QUARTER_PI/1.5);
  for(int i = 0; i < total; i++){
    pyramide[i].update();
    pyramide[i].display();
  }
}