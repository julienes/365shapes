class Triangle{
  float alpha = 255;
  Triangle(){
    
  }
  
  void update(){
    alpha-=20;
  }
  
  Boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(float r){
    rotate(r);
    stroke(7,11,96, alpha);
    fill(255, alpha);
    triangle(0,0,-20,20,20,20);
  }

}