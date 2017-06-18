Money money;
PVector gravity;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  gravity = new PVector(0,0.2);
  money = new Money();
}

void draw(){
  background(6,7,175);
  lights();
  money.applyForce(gravity);
  money.update();
  money.display();
}