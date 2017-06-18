void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=100; i++){
    stroke(6,7,175,100-i);
    fill(255,100-i);
    float angle = map(i, 0, 100, 0, TWO_PI);
    float x = sin(angle)*100;
    float y = cos(angle)*100;
    float d = map(dist(mouseX,mouseY,x,y),-100,100, 0, 50);
    ellipse(x,y,d,d);
  }
}