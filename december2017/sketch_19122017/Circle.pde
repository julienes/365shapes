class Circle{
  int num;
  int R;
  float t;
  Circle(int _num, int _R){
    R = _R;
    num = _num;
  }
  
  void display(){
    float total = pow(1.1,num);
    for(int i = 1; i <= total; i++){
      t += i * 0.01;
      float n = noise(t);
      float angle = map(i, 0, total, 0, TWO_PI+0.01);
      float x = (R + 100) * cos(angle) + n;
      float y = (R + 100) * sin(angle) + n;
      point(x,y);
    }
  }
}