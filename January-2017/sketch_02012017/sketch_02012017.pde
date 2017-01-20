ArrayList<Ball> balls;
boolean move = false;
float x = -64;
float y = 250;
float angle = 0.05;
float speed = 0.05;

void setup(){
  size(500,500);
  smooth();
  balls = new ArrayList<Ball>();
}

void draw(){
  x = x+1;
  y = y+cos(angle)*5;
  
  if(x>width+64){
    x = -64;
  }
  background(6,7,175);
  for(Ball b : balls){
    b.updateAlpha();
    b.display();
  }
  if(balls.size() >127){
    balls.remove(0);
  }
  balls.add(new Ball(x, y, 128));
  println(balls.size());
  angle = angle+speed;
}

void mouseMoved(){
  
}


class Ball{
  float x, y, size;
  float alpha = 255;
  Ball(float depart_x, float depart_y, float depart_size){
    x = depart_x;
    y = depart_y;
    size = depart_size;
  }
  
  void updateAlpha(){
    alpha-=2;
    size-=1;
  }
  
  void display(){
    noStroke();
    fill(255,alpha);
    ellipse(x,y, size,size);
  }
}