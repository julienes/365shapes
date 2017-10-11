Corde[] corde = new Corde[20];

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
  strokeWeight(5);
  for(int i = 0; i < corde.length; i++){
    float angle = map(i, 0, corde.length, 0, TWO_PI);
    corde[i] = new Corde(angle);
  } 
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < corde.length; i++){
    corde[i].update();
    corde[i].display();
  }
}