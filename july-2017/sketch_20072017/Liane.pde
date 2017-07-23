class Liane{
  float x1, y1, x2, y2;
  float count;
  float angle;
  float scalar1 = 50;
  float scalar2 = 100;
  float total = 0.5;
  float z,y;
  float angle2 = 0;
  float speed = 0.01;
  boolean change = false;
  Liane(float _angle, float _count, float _scalar2){
    angle = _angle;
    count = _count;
  }
  
  void update(){
  count+=total;
  if(count>=100){
  angle2 = angle2 + speed;
  y = cos(angle2) *50;
  z = sin(angle2) *50;
  }
}
  
  void display(){
    x1 = cos(angle) * scalar1;
    y1 = sin(angle) * scalar1;
    x2 = cos(angle) * scalar2;
    y2 = sin(angle) * scalar2;
    beginShape(LINES);
    vertex(x1, y1, 0);
    vertex(x2+y, y2+y, z);
    endShape();
  }
}