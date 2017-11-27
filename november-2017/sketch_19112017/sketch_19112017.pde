float a = 2;
float b = 0.9;
float o;
boolean grow = true;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  beginShape(LINES);
  for(int i = 0; i < 30; i++){
    strokeWeight(i);
    float angle = map(i,0,30,0,o);
    float x = 70 * ((a * pow(b, angle)) * cos(angle));
    float y = 70 * ((a * pow(b, angle)) * sin(angle));
    vertex(x,y);
  }
  endShape();
  update();
}

void update(){
  if(grow){
    o+=0.1;
    if(o >= TWO_PI*2){
      grow = false;
    }
  }
  if(!grow){
    o-=0.1;
    if(o <= 0){
      grow = true;
    }
  }
}  