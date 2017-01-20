ArrayList<Ball> b;

void setup(){
  size(500, 500);
  smooth();
  b = new ArrayList<Ball>();
}

void draw(){
  background(6,7,175);
  noStroke();
  for(int i = b.size()-1; i >=0; i--){
    Ball ball = b.get(i);
    ball.move();
    ball.visible();
    ball.display();
    if(ball.isDead()){
      b.remove(i);
    }
  }
  b.add(new Ball());
}