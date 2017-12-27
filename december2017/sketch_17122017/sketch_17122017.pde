Noisy[] noisy = new Noisy[60];
void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  for(int i = 0; i < noisy.length; i++){
    float a = map(i,0,noisy.length, 0, TWO_PI);
    noisy[i] = new Noisy(i,a);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < noisy.length; i++){
    noisy[i].display();
  }
}