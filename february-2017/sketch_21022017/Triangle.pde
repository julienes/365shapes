class Triangle{
  float x, y;
  float alpha = 255;
  
  Triangle(float newX, float newY){
   x = newX;
   y = newY;
  }
  
  void update(){
    alpha-=1;
  }
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    alpha-=2;
    stroke(255, alpha);
    noFill();
    beginShape();
    vertex(x,y);
    vertex(100,0);
    vertex(-100,0);
    vertex(x,y);
    endShape();
  }
  
}