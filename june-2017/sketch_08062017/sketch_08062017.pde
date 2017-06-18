Tentacle[] tentacle = new Tentacle[15];

void setup(){
  size(500,500);
  smooth();
  fill(255);
  stroke(6,7,175);
  for(int i = 0; i <= tentacle.length-1; i++){
    float angle = map(i, 0, tentacle.length, 0, TWO_PI);
    tentacle[i] = new Tentacle(angle);
  }
}

void draw(){
  translate(width/2, height/2);
  background(6,7,175);
  for(int i = 0; i <= tentacle.length-1; i++){
    tentacle[i].update();
    tentacle[i].display();
  }
}