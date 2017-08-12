Spiral[] spiral = new Spiral[20];
int r = 0;
void setup(){
  size(500,500);
  smooth();
  stroke(255,150);
  for(int i = 0; i<=spiral.length-1; i++){
    float angle = random(0, TWO_PI);
    int w = floor(random(1,15));
    r = r + w + 2;
    spiral[i] = new Spiral(angle, r,w);
  }
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=spiral.length-1; i++){
    spiral[i].arC();
  }
}