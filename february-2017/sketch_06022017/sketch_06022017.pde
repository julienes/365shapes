float r = 0;
void setup(){
  size(500,500);
  smooth();
  background(6,7,175);
}

void draw(){
  r = r+ 0.2;
  translate(width/2, height/2);
  Circle(0, 0, 150);
}

void Circle(float x, float y, float size){
  float r = random(1);
  stroke(255);
  noFill();
  ellipse(x, y, size, size);
  if(size>=8){
    if(r<=0.5){
    Circle(x+size/2, y+size/2, size/2);
    Circle(x-size/2, y-size/2, size/2);
    Circle(x-size/2, y+size/2, size/2);
    Circle(x+size/2, y-size/2, size/2);
    }
  }
}