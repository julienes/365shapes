class Star{
  float alpha = 255;
  float size = 0;
  PVector angle = PVector.random2D();
  PVector position = new PVector(width/2, height/2);
  PVector acceleration;
  PVector move = new PVector(0,0);
  Star(){
  
  }
  
  void move(){
    alpha-=5;
    size+=0.2;
    angle.mult(0.9);
    move.add(angle);
    position.add(move);
  }
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    fill(255, alpha);
    ellipse(position.x, position.y, size, size);
    println(angle);
  }
 
}