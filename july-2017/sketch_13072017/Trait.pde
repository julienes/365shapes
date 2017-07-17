class Trait{
  float x1, y1, x2, y2;
  float z,y;
  float angle;
  float speed = 0.1;
  float number;
  Trait(float _x1, float _x2, float _y1, float _y2, float _depart){
    x1 = _x1;
    x2 = _x2;
    y1 = _y1;
    y2 = _y2;
    angle = _depart;
    number = _depart;
  }
  
  void update(){
      angle = angle+speed;
      z = sin(angle)*10;
      y = cos(angle)*10;
      if(number%2 == 1){
        strokeWeight(5);
      }else{
        strokeWeight(2);
      }
  }
  
  void display(){
    beginShape(LINES);
       vertex(x1, y1,z);
      vertex(x2, y2+y, z);
    endShape();
  }
}