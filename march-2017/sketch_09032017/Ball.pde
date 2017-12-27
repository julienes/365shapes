class Ball{
  float angle = random(0,30);
  float x,y;
  float base = 0;
  float radius = random(5,20);
  float r = random(130,150);
  float alpha = random(5,255);
  Ball(){
  
  }
  
  void display(float x1, float y1){
    stroke(255, alpha);
    x = base + sin(angle) * r;
    y = base + cos(angle) * r;
    ellipse(x, y , radius , radius);
    line(x,y,x1,y1);
  }
}