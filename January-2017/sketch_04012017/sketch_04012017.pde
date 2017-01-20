float angle = 0;

void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(6,7,175);
  noStroke();
  fill(255);
  for(float a = 0; a<=3000; a++){
    float t = 2;
    float r = random(125);
    float angle = random(TWO_PI);
    float x = (width/2)+sin(angle)*(r-t/2);
    float y = (height/2)+cos(angle)*(r-t/2);
    ellipse(x, y, t, t);
  }
}