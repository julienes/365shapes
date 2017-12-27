float angle = 0;
float speed = 0.03;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(4);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateZ(angle);
  rotateY(angle);
  float beta = 0;
  beginShape();
  while (beta < PI){
    float r = 0.8 + 1.6 * sin(6 * beta);
    float theta = 4 * beta;
    float phi = 0.2 * PI * sin(12 * beta);
    float x = 70 * (r * cos(phi) * cos(theta));
    float y = 70 * (r * cos(phi) * sin(theta));
    float z = 20 * (r * sin(phi));
    
    beta += 0.001;
    vertex(x,y,z);
  }
  endShape();
  angle += speed;
}