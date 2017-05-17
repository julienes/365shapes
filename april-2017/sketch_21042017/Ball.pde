class Ball{
  PVector position;
  PVector target = new PVector(width/2, height/2);
  PVector target2;
  boolean straight = true;
  float speed = 0;
  float a;
  float time;
  Ball(float _x, float _y){
    position = new PVector(_x, _y);
    target2 = new PVector(_x, _y);
  }
  
  
  void update(float _time){
    speed+=0.01;
    if(straight){
      position.lerp(target,speed);
    }else{
       position.lerp(target2,speed);
    }
    
    if(_time>100 && straight==true){
      straight = false;
      speed = 0;
    }else if(_time>100 && straight==false){
      straight = true;
      speed = 0;
    }
  }
  
  void display(){
    ellipse(position.x,position.y,25,25);
  }
}