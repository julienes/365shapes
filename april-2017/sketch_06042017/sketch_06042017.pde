ArrayList<Ball> b;
  float angle = 0.01;
  float speed = 0.05;
  float x = 0;
  float y = 0;
  float z = 0;
  float t = 0;
  float a = 0;
void setup(){
  size(500, 500,P3D);
  smooth();
  b = new ArrayList<Ball>();
}


void draw(){
  lights();
  background(6,7,175);
  move();
  translate(width/2, height);
  rotateX(PI/3);
  for(int i = 0; i<b.size(); i++){
    Ball ball = b.get(i);
    ball.move();
    ball.display();
    if(ball.isDead()){
      b.remove(i);
    }
  }
  b.add(new Ball(x,y,z));
}

void move(){
  a+=0.4;
  t = t + 0.03;
  float n = noise(t);
  n = map(n, 0,1, 50,100);
  x = 0 + sin(angle)*n;
  y = 0 + cos(angle)*n;
  z = a +(n*2);
  angle = angle+speed;
}