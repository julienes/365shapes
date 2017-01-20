class Line {
  PVector base;
  PVector newPos;
  float angle = random(0,10);
  float speed = 0.05;
  int scalar;
  float alpha = 255;
  float x;
  float y;
  PVector increment;
  Line(){
    scalar = 0;
    
  }
  void update(){
    scalar++;
    alpha-=1;
    x = width/2 + sin(angle) * scalar;
    y = height/2 + cos(angle) * scalar;
    base = new PVector(width/2, height/2);
    newPos = new PVector(x, y);
    newPos.sub(base);
  }
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  void display(){
    stroke(255, alpha);
    line(0,0, newPos.x, newPos.y);
  }
}