class Spiral{
  float angle = 1;
  float speed = 0;
  float scalar = 0;
  float x,y;
  float base = width/2;
  float alpha = random(100,255);
  float size;
  
  Spiral(float newSpeed, float newScalar, float newSize){
    scalar = newScalar;
    speed = newSpeed;
    size = newSize;
  }
  
  void move(){
    x = base + sin(angle) * scalar;
    y = base + cos(angle) * scalar;
    angle = angle + (speed/1000);
  }
  
  void display(){
    stroke(255);
    ellipse(x, y, size, size);
  }
  
}