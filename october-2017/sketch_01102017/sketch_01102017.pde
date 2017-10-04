float total = 100;
int a = 180;

float angle = 0;
float speed = 0.02;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  noFill();
}

void draw(){
  background(6,7,175);
  smooth();
  translate(width/2, height/2);
  rotateY(angle);
  astroide();
  angle = angle + speed;
}

void astroide(){
  beginShape();
  for(int i = 0; i < total; i++){
    float u = map(i, 0, total, 0, TWO_PI);
    for(int j = 0; j < total; j++){
      float v = map(j, 0, total, 0, TWO_PI);
      float x = a * (cos(u) * cos(u) * cos(u)) * (cos(v) * cos(v) * cos(v));
      float y = a * (sin(u) * sin(u) * sin(u)) * (cos(v) * cos(v) * cos(v));
      float z = a * (sin(v) * sin(v) * sin(v));
      vertex(x,y,z);
    }
  }
  endShape();
}