Branche[] sun = new Branche[100];

void setup(){
  size(500,500);
  smooth();
  frameRate(20);
  for(int i = 0; i<=sun.length-1; i++){
    float angle = i/TWO_PI;
    float x = sin(angle) * 100;
    float y = cos(angle) * 100;
    sun[i] = new Branche(x,y);
  }
  stroke(255);
  strokeWeight(1);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=sun.length-1; i++){
    sun[i].display();
  }
}