class Snake{
  float x,y,t;
  float count;
  Snake(float _count){
    count = _count;
  }
  
  
  void update(){
    t+=0.01;
  }
  
  void display(){
    if(count%2 == 1){
      fill(6,5,175);
    }else{
      fill(255);
    }
    x = 100 * (sin(t)/1+cos(t)*cos(t));
    y = 100 * (sin(t)*cos(t)/1+cos(t)*cos(t));
    ellipse(x,y,100,100);
  }
}