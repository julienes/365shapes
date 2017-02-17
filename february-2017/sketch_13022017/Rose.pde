class Rose {
  float n = 4;
  float d = 1;
  float k = n / d;
  float alpha = 255;
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
    alpha-=10;
    noFill();
    stroke(255, alpha);
    beginShape();
    for(float a = 0; a < TWO_PI*d; a+=0.02){
      float r = 100 * cos(k*a);
      float x = r * cos(a);
      float y = r * sin(a);
      vertex(x,y);
    }
    endShape(CLOSE);
  }
}