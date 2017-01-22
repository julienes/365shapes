class BallSystem{
  float angle = 0;
  float speed = 0.5;
  float x, y;
  float base = 250;
  Ball[] b = new Ball[2000];
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