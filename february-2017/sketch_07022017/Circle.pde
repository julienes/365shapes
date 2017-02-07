class Circle{
  float x,y, x2, y2;
  float angle;
  float speed = 0.02;
  float scalar = 100;
  float base = 0;
  Circle(float newAngle){
    angle = newAngle;
  }
  
  void move(){
  x = base + sin(angle) * scalar;
  y = base + cos(angle) * scalar;
  x2 = (base+10) + sin(angle) * scalar;
  y2 = (base+10) + cos(angle) * scalar;
  angle = angle + speed;
  }
  
  void display(){
    rond(x,y,10);
  }
  
  void rond(float x1, float y1, float size){
    stroke(255);
    strokeWeight(0.5);
    fill(255);
    line(x1,y1, x2, y2);
    ellipse(x1,y1,size,size);
    if(size>=5){
      rond(x1/4, y1/4,size/4);
      rond(x1/2, y1/2,size/2);
      rond(x1+(x1/4), y1+(y1/4),size/2);
      rond(x1+(x1/6), y1+(y1/6),size-2);
    }
  }
}