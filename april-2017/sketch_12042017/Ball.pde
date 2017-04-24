class Ball{
  float angle = random(0,30);
  float t = random(0,10);
  float x,y;
  float base = 0;
  float radius = random(1,5);
  float z = random(-5,5);
  Ball(){
  
  }
  
  void display(){
    t = t + 0.03;
    float n = noise(t);
    n = map(n, 0,1, 50,150);
    x = base + sin(angle) * n;
    y = base + cos(angle) * n;
    pushMatrix();
    noStroke();
    translate(x,y,0);
    sphere(radius);
    popMatrix();
  }
}