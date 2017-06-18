class Tentacle{
  float x,y, angle;
  float scalar = 1;
  boolean grow = true;
  Tentacle(float _angle){
    angle = _angle;
  }
  
  void update(){
    if(grow){
      scalar +=0.1;
      if(scalar>=10){
        grow = false;
      }
    }
    if(!grow){
      scalar -=0.1;
      if(scalar<=1){
        grow = true;
      }
    }
  }
  
  void display(){
    for(int i=10; i>=0; i--){
      x = sin(angle) * (100-(i*scalar));
      y = cos(angle) * (100-(i*scalar));
      ellipse(x,y,i*10,i*10);
    }
  }
}