float total = 500;
float a = 30;

void setup(){
  size(500,500);
  smooth();
  noStroke();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  pushMatrix();
  rotate(HALF_PI);
  petale();
  popMatrix();
}

void petale(){
  beginShape();
  for(int i = 0; i < total; i++){
    float t = map(i, 0, total, 0, TWO_PI);
    float x = 8 * a * (sin(t) * sin(t)) * cos(t);
    float y = 8 * a * (cos(t) * cos(t)) * sin(t);
    vertex(x,y);
  }
  endShape();
}