class Mover {
  float x,y;
  float alpha = 255;
  int size = 60;

  Mover(float new_X, float new_Y) {
    x = new_X;
    y = new_Y;
  }

  void update() {
    alpha-=0.1;
    size-=0.1;
  }
   boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
   void display() {
    stroke(255, alpha);
    fill(6,7,175, alpha);
    rect(x,y,size,size);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }

  }

}