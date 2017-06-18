class Circle{
  PVector[] globe;
  int total = 500;
  float z = 1;
  Circle(float scalar){
    globe = new PVector[total+1];
  for(int i = 0; i< total+1; i+=5){
    float angle = map(i, 0, total, 0 , TWO_PI);
    float x = sin(angle)*scalar;
    float y = cos(angle)*scalar;
    if(angle>0 && angle<PI/2){
      z+=2;
    }else if(angle>PI/2 && angle<PI){
      z-=2;
    }else if(angle>PI && angle<PI+PI/2){
      z+=2;
    }else if(angle>PI+PI/2 && angle<=TWO_PI){
      z-=2;
    }
    globe[i] = new PVector(x,y,z);
  }
  }
  
  void display(){
    beginShape(LINES);
  for(int i = 0; i< total; i+=5){
    PVector v1 = globe[i];
    vertex(v1.x, v1.y, v1.z);
    PVector v2 = globe[i+5];
    vertex(v2.x, v2.y, v2.z);
  }
  endShape();
  }
}