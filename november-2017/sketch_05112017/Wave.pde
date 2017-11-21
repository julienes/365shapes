class Wave{
  float y;
  float alpha = 255;
  Wave(float y_){
    y = y_;
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=10;
    beginShape(LINES);
      for(int i = 100; i < width-100; i++){
        t+= 0.01;
        float n = noise(t);
        float m = map(n, 0, 1, 0, 200);
        vertex(i, y + m);
      }
    endShape();
  }
}