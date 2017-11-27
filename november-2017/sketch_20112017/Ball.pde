class Ball{
  float x,y;
  float angle = 0;
  float speed = 0.06;
  
  Ball(){
  
  }
  
  void display(){
     fill(255);
     noStroke();
     x = width/2 + 100 * cos(angle);
     y = height/2 + 100 * sin(angle);
     
     angle = angle+speed;
     ellipse(x,y,20,20);
  }
}