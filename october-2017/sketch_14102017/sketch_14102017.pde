int total = 150;
int b = 125;
float h = 10;
float angle = 0;
float speed = 0.02;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(angle);
  rotateY(angle);
  beginShape();
  for(int i = 0; i < total; i++){
    float u = map(i, 0, total, 0, TWO_PI);
    for(int j = 0; j < total; j++){
      float v = map(j, 0, total, 0, PI/2);
      float x = b * cos(u) * cos(v);
      float y = b * cos(u) * sin(v);
      float z = b * sin(u) + (h*v);
      vertex(x,y,z);
    }
  }
  endShape();
  
  angle = angle + speed;
}