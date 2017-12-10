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
    for(int i = 0; i < 100; i++){
      float n = noise(i, t);
      float d = map(n, 0, 1, 0, 2);
      float u = map(i,0,100,0,TWO_PI);
      float x = R * cos(u) * cos(v);
      float y = R * sin(u) * cos(v);
      float z = R * sin(v);
      vertex(x * d ,y * d,z);
    }
    
    t+=0.01;
    
    v+=0.01;
    u+=0.01;
    println(v);
    endShape();
  }
}