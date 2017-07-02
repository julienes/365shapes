class Cube{
  float x, y;
  float count;
  float r = 0;
  float speed = 0.05;
  Cube(float _x, float _y, float _count){
    x = _x;
    y = _y;
    count = _count;
  }
  
  void update(){
    count++;
    if(count>200){
      r = r + speed;
      if(r>=PI){
        r = 0;
        count = 0;
      }
    }
  }
  
  void display(){
    pushMatrix();
    translate(x,y);
    rotateX(r);
    rotateY(r);
    box(50);
    popMatrix();
  }
}