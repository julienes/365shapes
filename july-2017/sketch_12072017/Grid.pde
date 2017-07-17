class Grid{
  float x,y;
  float angle = 0;
  float speed = 0.1;
  float count;
  boolean moving = false;
  Grid(float _x, float _y, float _count){
    x = _x;
    y = _y;
    count = _count;
  }
  
  void update(){
    if(count>=70){
      angle = angle+speed;
      if(angle>=TWO_PI){
        count = 0;
        angle = 0;
      }
    }else{
      count++;
    }
  }
  
  void display(){
    pushMatrix();
    translate(x,y,0);
    rotateX(angle);
    rect(0,0,20,20);
    popMatrix();
  }
}