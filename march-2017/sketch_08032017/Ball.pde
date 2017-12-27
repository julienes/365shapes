class Ball {
float x,y;
PVector position;
PVector move;
int frame = 0;
  Ball(float positionX, float positionY){
    x = positionX;
    y = positionY;
    position = new PVector(x,y);
  }
  
  void move(){
    float r = random(1,200);
    int rr = round(r);
    if(rr<50){
      move = new PVector(10,0);
      if(position.x>=420){
        move.x *= -1;
      }
    }
    if(rr>=50 && rr<100){
      move = new PVector(0,10);
      if(position.y>=420){
        move.y *= -1;
      }
    }
    if(rr>=100 && rr<150){
      move = new PVector(-10,0);
      if(position.x<=80){
        move.x *= -1;
      }
    }
    if(rr>=150 && rr<=200){
      move = new PVector(0,-10);
      if(position.y<=80){
        move.y *= -1;
      }
    }
    position.add(move);
  }
  
  void display(){
   ellipse(position.x, position.y, 10, 10);   
  }
}