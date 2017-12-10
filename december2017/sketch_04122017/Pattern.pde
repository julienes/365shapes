class Pattern{
  float r;
  int x,y;
  float angle = 0;
  float speed = 0.1;
  Pattern(int _x, int _y,float _r){
    x = _x;
    y = _y;
    r = _r;
  }
  
  void display(){
    noFill();
    pushMatrix();
    translate(x,y);
    rotate(angle);
    if(r == 0){
      arc(0,0,20,20, 0, PI);
    }else if(r == 1){
      arc(0,0,20,20, -PI, 0);
    }else{
      line(0,0,0+20, 0);
      fill(255);
      ellipse(0+20, 0, 5,5);
    }
    popMatrix();
    angle = angle+speed;
  }
}