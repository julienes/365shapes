class Poly{
  int side, size;
  float posX, posY;
  boolean change = false;
  float count;
  
  Poly(float _x, float _y,int _side, int _size, float pos){
    side = _side;
    size = _size;
    posX = _x;
    posY = _y;
    count = pos;
  }
  
  
  void display(){
    pushMatrix();
    update();
    translate(posY, posX);
    beginShape();
      for(int i = 0; i <= side; i++){
        float theta = map(i, 0, side, 0, TWO_PI);
        float x = size * cos(theta);
        float y = size * sin(theta);
        vertex(x,y);
      }
    endShape();
    popMatrix();
  }
  
  void update(){
    if(!change){
      count+=0.5;
      if(count >= 15){
        side++;
      }
      if(side >= 38){
        change = true;
        count = 0;
      }
    }
    if(change){
      count+=0.5;
      if(count >= 15){
        side--;
      }
      if(side <= 3){
        change = false;
        count = 0;
      }
    }
  }
}