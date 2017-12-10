Noisy[] noisy = new Noisy[50];

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  for(int i = 0; i < noisy.length; i++){
    noisy[i] = new Noisy(i);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < noisy.length; i++){
    noisy[i].display();
  }
}