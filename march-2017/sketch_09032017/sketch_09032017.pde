ArrayList<Ball> ball;

void setup(){
  size(500,500);
  frameRate(15);
  smooth();
  ball = new ArrayList<Ball>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<ball.size()-1; i++){
    if(ball.size()>=2){
      Ball b = ball.get(i);
      Ball b1 = ball.get(i+1);
      b.display(b1.x, b1.y);
    }
    if(ball.size()>150){
      ball.remove(0);
    }
  }
  ball.add(new Ball());
}