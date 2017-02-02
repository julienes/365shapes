class Circle{
  float angle = 0;
  float speed = 0.05;
  float base;
  float r;
  float x;
  float y;
  float c;
  Circle(float newR){
    r = newR;
    c = random(100,150);
    x = c * sin(radians(r));
    y = c * cos(radians(r));
  }
  
  void display(){
    noFill();
    stroke(255);
    vertex(x,y);
  }
}