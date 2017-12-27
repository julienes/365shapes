class Line{
  float x, y, x2, y2;
  float angle, angle2;
  float speed, speed2;
  float posX;
  float scalar = random(50,200);
  float scalar2 = random(50,200);
  float alpha = random(80,255);
  Line(float newX){
    posX = newX;
  }
  
  void move(){
    speed = random(0.01, 0.1);
    speed2 = random(0.01, 0.1);
    x = sin(angle) *scalar;
    y = cos(angle) *scalar2;
    x2 = sin(angle2) *scalar;
    y2 = cos(angle2) *scalar2;
    angle = angle + speed;
    angle2 = angle2 + speed2;
  }
  
  void display(){
    noFill();
    stroke(255);
    curve(x2,y2,posX,0,posX,250,x,y);
  }
}