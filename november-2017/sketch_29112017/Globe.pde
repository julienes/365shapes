class Globe{
  float u = 0;
  float v = 0;
  float R = 100;
  float t = 0;
  Globe(float _v){
    v = _v;
  }
  
  void display(){
    beginShape();
    for(float i = 0; i < TWO_PI; i+=PI/30){
      float x = cos(u + i) * cos(v);
      float y = sin(u + i) * cos(v);
      float z = sin(v);
      float n = noise(x,y, t);
      float d = R + map(n,0,1,0,100);
      vertex(x * d ,y * d,z * d);
    }
    
    t+=0.01;
    
    v+=0.01;
    u+=0.01;
    endShape();
  }
}