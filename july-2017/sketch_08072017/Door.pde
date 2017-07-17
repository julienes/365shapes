class Door{
  float s;
  float count;
  float r;
  float speed = 0.005;
  Door(float _s, float _count){
    s = _s;
    count = _count;
  }
  
  
  void update(){
    if(count>=100){
      r += speed;
      if(r>=PI){
        count = 0;
        r=0;
      }
    }else{
      count++;
    }
  }
  
  
  void display(){
    rotateX(r);
    rotateY(r);
    ellipse(0,0,s,s);
  }
}