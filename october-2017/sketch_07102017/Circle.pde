class Circle{
  float x,y;
  float R = 0;
  float growing = 0.5;
  float speed = 1;
  float r = 0;
  float alpha = 255;
  int total = 10;
  boolean grow = true;
  Circle(){
  
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void update(){
    alpha-=1.2;
    
    if(grow){
      r+=growing;
      if(r > 50){
        grow = false;
      }
    }
    if(!grow){
      r-=growing;
    }
    
    R+=speed;
  }
  
  void display(){
    noStroke();
    fill(255,alpha);
     for(int i = 0; i < total; i++){
       float angle = map(i, 0, total, 0, TWO_PI);
       x = R * cos(angle);
       y = R * sin(angle);
       ellipse(x, y, r, r);
     }
  }
}