class Stick{
   float x,y;
   float posX, posY;
   float angle = 0;
   float speed = 0.05;
  Stick(float x_, float y_, float _posX, float _posY ){
    x = x_;
    y = y_;
    posX = _posX;
    posY = _posY;
  }
  
  void update(){
    x = x+sin(angle);
    y = y + cos(angle);
    angle = angle + speed;
  }
  
  void display(){
    line(posX,posY,x-15,y);
  }
}