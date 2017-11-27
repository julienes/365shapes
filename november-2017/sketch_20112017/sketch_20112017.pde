Vars vars = new Vars();
Ball ball = new Ball();

ArrayList<Point>pointes;

float gap;

float pointX;

float ballx, bally,ballLastX, ballLastY, ballDirectionX, ballDirectionY, ballSpeedX, ballSpeedY;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  strokeWeight(5);
  noFill();
  pointes = new ArrayList<Point>();
  pointX = width/2;
  gap = (height-100) / (vars.totalPoints - 1);
  
  //float pointX = width/2;
  
  for(int i = 0; i <= vars.totalPoints - 1; i++){
    pointes.add(new Point(pointX,i * gap));
  }
}

void draw(){
  background(6,7,175);
  
  ball.display();
  noFill();
  stroke(255);
  for(int i = 0; i <= vars.totalPoints - 1; i++){
    Point p = pointes.get(i);
    p.move();
  }
  beginShape();
  vertex(width-250, 0);
  translate(0, 50);
  for(int i = 0; i < vars.totalPoints - 1; i++){
    Point p = pointes.get(i);
    Point p1 = pointes.get(i+1);
    if(p1 != null){
      p.cx = (p.x + p1.x)/2 - 0.0001;
      p.cy = (p.y + p1.y)/2;
    }else{
      p.cx = p.ix;
      p.cy = p.iy;
    }
    bezierVertex(p.x, p.y, p.cx, p.cy, p.cx, p.cy);
  }
  endShape();
  mouseSpeed();
  mouseDirection();
}


void mouseDirection(){
  if(ballx < ball.x){
    ballDirectionX = 1;
  }else if(ballx > ball.x){
    ballDirectionX = -1;
  }else{
    ballDirectionX = 0;
  }
  
  if(bally < ball.y){
    ballDirectionY = 1;
  }else if(bally > ball.y){
    ballDirectionY = -1;
  }else{
    ballDirectionY = 0;
  }
  
  ballx = ball.x;
  bally = ball.y;
}

void mouseSpeed(){
  ballSpeedX = ballx - ballLastX;
  ballSpeedY = bally - ballLastY;
  
  ballLastX = ballx;
  ballLastY = bally;
}

void mouseMoved(){
 // mouseDirection();
}