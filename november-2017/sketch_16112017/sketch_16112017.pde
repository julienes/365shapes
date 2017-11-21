PVector loc = new PVector(250,250);
PVector base = new PVector(0,0);
PVector acc = PVector.random2D();

void setup(){
  size(500,500);
  smooth();
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  particle();
  float posX = loc.x;
  float posY = loc.y;
  if(posX < 0){
    posX = posX * -1;
  }
  if(posY < 0){
    posY = posY * -1;
  }
  int circleResolution = (int) map(posY, 0, height, 2, 180);
  
  
  float radius = posX/2;
  float angle = TWO_PI/circleResolution;
  
  beginShape();
  for(int i = 0; i <=circleResolution; i++){
    float x = cos(angle*i) * radius;
    float y = sin(angle*i) * radius;
    line(0,0,x,y);
  }
  endShape();
}

void particle(){
  if(frameCount%50 == 0){
    acc = PVector.random2D(); 
  }
  
  base.add(acc);
  base.normalize();
  base.mult(4);
  loc.add(base);
  loc.limit(200);
  ellipse(loc.x, loc.y,20,20);
}