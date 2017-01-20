ArrayList<Ball> b;
  float angle = 0.01;
  float speed = 0.01;
  float x = 0;
  float y = 0;
  float t = 0;
void setup(){
  size(500, 500);
  smooth();
  b = new ArrayList<Ball>();
}


void draw(){
  background(6,7, 175);
  noStroke();
  move();
  for(int i = 0; i<b.size(); i++){
    Ball ball = b.get(i);
    ball.move();
    ball.display();
    if(ball.isDead()){
      b.remove(i);
    }
  }
  b.add(new Ball(x,y));
  println(b.size());
}

void move(){
  t = t + 0.03;
  float n = noise(t);
  n = map(n, 0,1, 100,200);
  x = 250 + sin(angle)*n;
  y = 250 + cos(angle)*n;
  angle = angle+speed;
}