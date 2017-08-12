class Losange{
  Pyramide p1 = new Pyramide();
  Pyramide p2 = new Pyramide();
  float count = 0;
  boolean open = false;
  boolean close = false;
  float up = 100;
  float down = -100;
  Losange(){}
  
  void display(){
    pushMatrix();
      scale(0.7);
      translate(0,down);
      rotateX(HALF_PI);
      p1.display();
    popMatrix();
    pushMatrix();
      scale(0.7);
      translate(0,up);
      rotateX(-HALF_PI);
      p2.display();
    popMatrix();
  } 

  void update(){
    if(count >= 150){
      open = true;
      count = 150;
    }else{
      count++;
    }
    
    if(open){
      up+= 0.5;
      down-= 0.5;
      if(up >= 150){
        close = true;
        open = false;
      }
    }
    
    if(close){
      up-= 1;
      down+= 1;
      if(up <= 100){
        close = false;
        count = 0;
      }
    }
    
  }}