class Ceva {
  float alpha = 255;
  PVector pos1, pos2;
  Ceva(PVector position1, PVector position2){
    pos1 = position1;
    pos2 = position2;
  
  }
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
 
  void display(){
    alpha-=1;
    stroke(255, alpha);
    vertex(pos1.x, pos1.y);
    vertex(pos2.x, pos2.y);
  }
}