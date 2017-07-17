class Rond{
  float x1;
  float y1;
  float x2;
  float y2;
  float alpha = 255;
  float base;
  boolean increase = true;
  float num = 1;
  Rond(float _x1, float _y1, float _x2, float _y2){
    x1 = _x1;
    y1 = _y1;
    x2 = _x2;
    y2 = _y2;
    base = x1;
  }
  
  void update(){
    if(increase){
      num+=0.1;
      if(num>=5){
        increase = false;
      }
    }
    if(!increase){
      num-=0.1;
      if(num<=0){
        increase = true;
      }
    }
  }
  
  
  void display(){
    pushMatrix();
    translate(0,y2);
    beginShape(LINES);
    for(float i = base; i<=x2; i+=0.01){
      x1 = i+num;
      y1 = sin(i*num)*4;
      vertex(x1,y1);
    }
    endShape();
    popMatrix();
    stroke(255,alpha);
    noFill();
  }
}