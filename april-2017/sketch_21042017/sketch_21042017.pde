ArrayList<Ball>ball;
float time;
float r;

void setup(){
  size(500,500);
  smooth();
  strokeWeight(10);
  stroke(255);
  noFill();
  ball = new ArrayList<Ball>();
  for(int x = 100; x<=400; x+=40){
    for(int y = 100; y<=400; y+=40){
      ball.add(new Ball(x,y));
    }
  }
}

void draw(){
  r++;
  time = r;
  if(time>100){
    r = 0;
  }
  background(36,53,194);
  for(int i= 0; i<ball.size(); i++){
    Ball b = ball.get(i);
    pushMatrix();
    b.update(time);
    b.display();
    popMatrix();
  }
}