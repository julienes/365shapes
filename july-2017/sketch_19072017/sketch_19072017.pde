Liane[] liane  = new Liane[500];

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
  for(int i = 0; i<=liane.length-1; i++){
    int count = i;
    float angle = map(i, 0, liane.length-1, 0, TWO_PI);
    liane[i] = new Liane(angle, count);
  }
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=liane.length-1; i++){
    liane[i].update();
    liane[i].display();
  }
}

 