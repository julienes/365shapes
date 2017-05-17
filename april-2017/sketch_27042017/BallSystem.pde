class BallSystem{
  float angle = 0;
  float speed = random(0.05, 0.1);
  float x, y;
  float base = 0;
  Ball[] b = new Ball[1000];
  BallSystem(){
    for(int i = 0; i<=b.length-1; i++){
      x = base + sin(angle)*100;
      y = base + cos(angle)*100;
      angle = angle+speed;
      b[i] = new Ball(x,y);
    }
  }
  
  void display(){
    for(int i = 0; i<=b.length-1; i++){
      b[i].move();
      b[i].display();
    }
  }
}