class Liane{
  float x1, y1, x2, y2;
  float count;
  float angle;
  float scalar1 = 50;
  float scalar2 = 150;
  float total = 3;
  boolean change = false;
  Liane(float _angle, float _count){
    angle = _angle;
    count = _count;
  }
  
  void update(){
  count+=total;
  if(count>=500){
    if(!change){
      scalar1+=total;
      scalar2-=total;
      if(scalar1 >=150){
        change = true;
      }
    }
    if(change){
      scalar1-=total;
      scalar2+=total;
      if(scalar1 <=50){
        change = false;
      }
    }
  }
}
  
  void display(){
    x1 = cos(angle) * scalar1;
    y1 = sin(angle) * scalar1;
    x2 = cos(angle) * scalar2;
    y2 = sin(angle) * scalar2;
    line(x1, y1, x2, y2);
  }
}