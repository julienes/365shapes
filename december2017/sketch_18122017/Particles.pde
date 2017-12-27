class Particles{
  int total;
  float radius;
  float t = 0;
  Particles(int _total, float _radius){
    total = _total;
    radius = _radius;
  }
  
  void display(){
    for(int j = 0; j <= pow(total,1.5); j++){
      float u = map(j,0,pow(total,1.5), 0, TWO_PI);
      for(int i = 0; i <= pow(total,1.5); i++){
        float v = map(i,0,pow(total,1.5), 0, TWO_PI);
        float x = radius * pow(cos(u),15) * cos(v);
        float y = radius * sin(u) * pow(cos(v),15);
        float z = radius * sin(v);
        stroke(255);
        strokeWeight(2);
        point(x,y,z);
      }
    }
  }
}