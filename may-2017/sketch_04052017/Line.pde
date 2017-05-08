class Line{
  float alpha = 255;
  float x1,y1,x2,y2;
  Line(float _x1, float _x2, float _y1, float _y2){
    x1 = _x1;
    x2 = _x2;
    y1 = _y1;
    y2 = _y2;
  }
  
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void update(){
    alpha = alpha-5;
  }
  
  void display(){
    stroke(255,alpha);
    fill(255,alpha);
    line(0,0,x1,y1);
    line(0,0,x2,y2);
    ellipse(x1,y1,2,2);
    ellipse(x2,y2,2,2);
  }
}