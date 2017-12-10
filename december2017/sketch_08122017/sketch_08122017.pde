int total = 25;

Flocon[] flocon = new Flocon[total];

void setup(){
  size(500,500);
  smooth();
  noFill();
  strokeWeight(2);
  for(int i = 0; i < total; i++){
    flocon[i] = new Flocon();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < total; i++){
    float angle = map(i,0, total, 0, TWO_PI);
    float x = 150 * cos(angle) * sin(angle);
    float y = 150 * sin(angle);
    pushMatrix();
    translate(x,y);
    flocon[i].display();
    popMatrix();
  }
}