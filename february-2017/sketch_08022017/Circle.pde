class Circle{
  float x,y, x2, y2;
  float angle;
  float angle2;
  float speed = random(0.02,0.05);
  float speed2 = random(0.05,0.1);
  float scalar = 100;
  float base = 0;
  Circle(float newAngle){
    angle = newAngle;
  }
  
  void move(){
  x = base + sin(angle) * scalar;
  y = base + cos(angle) * scalar;
  x2 = (base+10) + sin(angle2) * scalar;
  y2 = (base+10) + cos(angle2) * scalar;
  angle = angle + speed;
  angle2 = angle2 + speed2;
  }
  
  void display(){
    rond(x,y,10);
  }
  
  void rond(float x1, float y1, float size){
    stroke(255);
    strokeWeight(0.5);
    fill(255);
    line(x1,y1, x2, y2);
    ellipse(x2,y2,size,size);
    ellipse(x1,y1,size,size);
    if(size>=8){
      rond(x1/4, y1/4,size/4);
      rond(x1/2, y1/2,size/2);
      rond(x1+(x1/4), y1+(y1/4),size/2);
      rond(x1+(x1/6), y1+(y1/6),size-2);
    }
  }
}