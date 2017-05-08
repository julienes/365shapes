class Arrow{
  float x,y,a;
  float n;
  Arrow(float _x, float _y, float _a){
   x = _x;
   y = _y;
   a = _a;
  }
  
  void display(){
    a = a + 0.03;
    float t = noise(a);
    n = map(t,0,1,0,TWO_PI);
    pushMatrix();
    translate(x,y);
    rotate(n);
    beginShape();
     vertex(-5,0);
      vertex(-10,0);
      vertex(-10,0);
      vertex(0,-20);
      vertex(0,-20);
      vertex(10,0);
      vertex(10,0);
      vertex(5,0);
      vertex(5,0);
      vertex(5, 20);
      vertex(5, 20);
      vertex(-5, 20);
      vertex(-5, 20);
      vertex(-5, 0);
    endShape();
    popMatrix();
  }
}