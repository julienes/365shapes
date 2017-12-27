class Particles{
  int total;
  float radius;
  float t = 0;
  Particles(int _total, float _radius){
    total = _total;
    radius = _radius;
  }
  
  void display(){
    for(int i = 0; i <= pow(total,2); i++){
      t+=0.0001;
      float n = noise(t);
      float m = map(n,0,1,20,50);
      float angle = map(i,0,pow(total,2), 0, TWO_PI);
      float x = (radius+m) * cos(angle);
      float y = (radius+m) * sin(angle);
      stroke(255);
      point(x,y);
    }
  }
}