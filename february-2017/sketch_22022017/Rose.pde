class Rose {
  float n = 4;
  float d = 7;
  float k = n / d;
  float alpha = 255;
  float rand;
  Rose(){

  }
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void display(){
    alpha-=255;
    noFill();
    stroke(255, alpha);
    beginShape();
    for(float a = 0; a < TWO_PI*d; a+=0.1){
      rand = random(0,1);
      float r = 100 * cos(k*a);
      float x = r * cos(a);
      float y = r * sin(a);
      if(rand<=0.4){
      text("0",x,y);
      }else{
      text("1",x,y);
      }
    }
    endShape(CLOSE);
  }
}