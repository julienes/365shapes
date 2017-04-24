class Line {
  int posX = 100;
  int posY = 100;
  Line(){}
  
  void update(){
    if(posX<=400){
      posX+=5;
    }else if(posY>=390){
      posX += 0;
      posY += 0;
    }
    if(posX>=400 && posY<=390){
      posY+=20;
      posX = 100;
    }
  }
  void display(){
    strokeWeight(1);
    stroke(255);
    noFill();
    if(posX % 20 == 0){
      ellipse(posX, posY, 10,10);
    }
    rectMode(CENTER);
    if(posX % 25 == 0){
      rect(posX, posY, 10,10);
    }
    strokeWeight(4);
    point(posX, posY);
  }
}