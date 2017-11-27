class speedLine{
  float posX, posY, posX2, posY2;
  float limit = random(150, 350);
  float speed = random(5,20);
  speedLine(float _posX, float _posY){
    posX = _posX;
    posY = _posY;
    posX2 = _posX;
    posY2 = _posY;
  }
  
  boolean isDead(){
    if(posX > 1000 || posY > 1000 || posX2 > 1000 || posY2 > 1000){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    line(posX, posY, posX2, posY2);
  }
  
  void update(){
    if(posY2 >= limit){
      posX+=speed;
      posY+=speed;
    }
    posX2+=5;
    posY2+=5;
  }
}