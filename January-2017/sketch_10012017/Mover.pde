class Mover {
  float x,y;
  float alpha = 255;
  int size = 40;

  Mover(float new_X, float new_Y) {
    x = new_X;
    y = new_Y;
  }

  void update() {
    alpha-=2;
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
    ellipse(x,y,size,size);
  }
}