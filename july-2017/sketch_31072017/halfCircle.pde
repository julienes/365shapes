class halfCircle{
  float x, y;
  float r;
  float speed = 0.05;
  halfCircle(float _x, float _y, float _r){
    x = _x;
    y = _y;
    r = _r;
  }
  
  void display(){
    r = r + speed;
    pushMatrix();
    translate(x,y);
    rotate(r);
    beginShape();
    for(int i = 0; i<=100; i++){
      float angle = map(i, 0, 100, 0, PI);
      float x1 = 10 * cos(angle);
      float y1 = 10 * sin(angle);
      vertex(x1, y1);
    }
    endShape();
    popMatrix();
  }
}