class Electric{
  PVector[] linelength;
  int total = 450;
  float t = 0;
  float m;
  float y;

  Electric(float _y){
    linelength = new PVector[total+1];
    y = _y;
  }
  
  void display(){
    for(int i = 50; i<=total; i++){
    t+=0.01;
    float n = noise(t);
    m = map(n, 0,1, 0, i/2);
    float x = i;
    float y1 = y;
    if(i<70 || i>400){
      linelength[i] = new PVector(x,y1);
    }else{
      linelength[i] = new PVector(x,y1-m);
    }
    }
    for(int i = 50; i<total; i++){
      line(linelength[i].x,linelength[i].y,linelength[i+1].x,linelength[i+1].y);
    }
  }
}