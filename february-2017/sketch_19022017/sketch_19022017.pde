ArrayList<Ball> ball;
float x, y, x2, y2;
float angle2 = 0;
float speed2 = 0.3;
float angle = 0;
float speed = 0.05;
int scalar= 120;
int scalar2= 30;
  
void setup(){
  size(500,500);
  smooth();
  ball = new ArrayList<Ball>();
  
}

void draw(){
  background(6,7,175);
  move();
  for(int i = ball.size()-1; i>=0; i--){
    Ball b = ball.get(i);
    b.display();
    if(b.isDead()){
      ball.remove(i);
    }
  }
  ball.add(new Ball(x, x2, y, y2));
}

void move(){
  x = 250 + sin(angle) * scalar;
  y = 250 + cos(angle) * scalar;
  x2 = x + sin(angle2) * scalar2;
  y2 = y + cos(angle2) * scalar2;
  angle = angle + speed;
  angle2 = angle2 + speed2;
}