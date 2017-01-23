class Wave{
  float s = 0;
  float r = random(200);
  float alpha = 255;
  Wave(){
  
  }
  
  void update(){
    alpha-=1;
    s+=2;
  }
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void display(){
    if(r<10){
      stroke(255, alpha);
      noFill();
      ellipse(width/2, height/2, s, s);
    }else{
    
    }
  }
}