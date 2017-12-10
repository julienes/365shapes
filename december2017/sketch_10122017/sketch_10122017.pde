float angle = 0;
float speed = 0.1;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(2);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotate(angle);
  for(int i = 0; i < 200; i++){
    float angle = map(i, 0, 200, 0, TWO_PI * 4);
    float x = (i/2) * cos(angle);
    float y = (i/2) * sin(angle);
    pushMatrix();
    arc(x,y,0.5*i,0.5*i, angle,angle + 0.8);
    popMatrix();
  }
  
  angle+=speed;
}