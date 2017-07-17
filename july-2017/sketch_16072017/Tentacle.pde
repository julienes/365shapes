class Tentacle {
  int x;
  int units;
  float angle;
  float r;
  Tentacle(int _x, int _units, float _angle){
    x = _x;
    units = _units;
    angle = _angle;
    r = _angle;
  }
  
  void display(){
    inc += 0.004;
    angle = sin(inc)/10.0 + sin(inc)/20.0;
    pushMatrix();
    rotate(r);
    for (int i = units; i > 0; i--) {
      strokeWeight(i);
      line(0, 0, 0, -8);
      translate(0, -8);
      rotate(angle);
    }
    popMatrix();
  }
}