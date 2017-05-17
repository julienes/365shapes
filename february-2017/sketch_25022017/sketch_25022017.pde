float t = 0;

void setup() {
  size(500, 500);
  noFill();
}

void draw() {
  background(6,7,175);
  stroke(255);
  t = t + 0.03;
  float n = noise(t);
  n = map(n, 0,1, 10,100);
  float maxX = n;
  float maxY = n;

  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=5) {
    float x = sin(radians(i)) * maxX;
    float y = cos(radians(i)) * maxY;
    pushMatrix();
    translate(x, y);
    rotate(radians(i-frameCount*6));
    rect(0, 0, 50, 50);
    popMatrix();
  }
}