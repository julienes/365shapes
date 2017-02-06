 Circle[] circle = new Circle[2000];
 float angle = 0;
 float speed = 0.01;
 float scalar = 0;
 float base = 250;
 float x, y;
 float t = 0;
   
void setup(){
  size(500,500);
  smooth();
  frameRate(10);
}

void draw(){
  background(7,11,96);
  for(int i = 0; i<=circle.length-1;i++){
    t = t + 0.03;
    float n = noise(t);
    n = map(n, 0,1, 100,200);
    angle = angle+speed;
    x = base + sin(angle)*(scalar+n);
    y = base + cos(angle)*(scalar+n);
    circle[i] = new Circle(x,y);
  }
  beginShape();
  for(int i = 0; i<=circle.length-1;i++){
    circle[i].display();
  }
  endShape();
}