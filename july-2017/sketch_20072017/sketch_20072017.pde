Liane[] liane  = new Liane[100];

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  strokeWeight(3);
  noFill();
  for(int i = 0; i<=liane.length-1; i++){
    float scalar2 = map(i,0,liane.length-1, 100, 160);
    int count = i;
    float angle = map(i, 0, liane.length-1, 0, TWO_PI);
    liane[i] = new Liane(angle, count, scalar2);
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

 