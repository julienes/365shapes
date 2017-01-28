Wave[] wave = new Wave[53];
float r = 0;
void setup(){
  size(500, 500);
  smooth();
  for(int i = 0; i<=wave.length-1; i++){
    wave[i] = new Wave(i*8, i);
  }
}

void draw(){
  background(6,7,175);
  stroke(255);
  translate(width/12, 0);
  for(int i = 0; i<=wave.length-1; i++){
    wave[i].move();
    wave[i].display();
  }
}