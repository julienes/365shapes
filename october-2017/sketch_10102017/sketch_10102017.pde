int count = 5000;
boolean grow = true;
float size = 0.6;
void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
}

void draw(){
  background(6,7,175);
  update();
  float faderX = size;
  
  float angle = radians(360/float(count));
  
  for(int i = 0; i < count; i++){
    float randomX = random(0, width);
    float randomY = random(0, height);
    float circleX = width/2 + cos(angle*i)*100;
    float circleY = height/2 + sin(angle*i)*100;
    
    float x = lerp(randomX, circleX, faderX);
    float y = lerp(randomY, circleY, faderX);
    point(x,y);
  }
}

void update(){
  if(grow){
    size+=0.01;
    if(size>=1){
      grow = false;
    }
  }
  if(!grow){
    size-=0.01;
    if(size<=0.6){
      grow = true;
    }
  }
}