class Circle{
  int num;
  int R = 150;
  float t;
  Circle(int _num){
    num = _num;
  }
  
  void display(){
    float total = pow(1.1,num);
    for(int x = 1; x <= total; x++){
      float angle = map(x, 0, total, -PI, PI+0.01);
      for(int y = 1; y <= total; y++){
        float angle2 = map(y, 0, total, -TWO_PI, TWO_PI+0.01);
        float x1 = R * cos(angle)*cos(angle2) * cos(angle);
        float y1 = R * sin(angle) * sin(angle2);
        float z = R * sin(angle2);
        point(x1,y1,z);
      }
    }
  }
}