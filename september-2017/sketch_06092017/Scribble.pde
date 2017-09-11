class Scribble{
  float x = 0.01, y = 0, z = 0;
  float a = 10;
  float b = 28;
  float c = 12.0/3.0;
  Scribble(){
  
  }
  
  void display(){
    beginShape();
    for(float i = 0; i<=100; i+=0.01){
      float dt = 0.01;
      float dx = (a * ( y - x)) * dt;
      float dy = (x * ( b - z) - y) * dt;
      float dz = (x * y - c * z) * dt;
      x = x + dx;
      y = y + dy;
      z = z + dz;
      PVector v = new PVector(x,y,z);
      vertex(v.x, v.y, v.z);
    }
    endShape();
  }
}