class Stick{
  float angle = random(10);
  float angle2 = random(10);
  float speed = random(0.03,0.07);
  float base = 250;
  float x, y, x2, y2;
  
  Stick(){
  
  }
  
  void update(){
    x = base + sin(angle)*150;
    y = base + cos(angle)*150;
    x2 = base + sin(angle2)*150;
    y2 = base + cos(angle2)*150;
    angle = angle + speed;
    angle2 = angle2 + speed;
  }
  
  void display(){
    stroke(255, 255);
    strokeWeight(0.5);
    fill(255);
    line(x,y,x2,y2);
  }
}