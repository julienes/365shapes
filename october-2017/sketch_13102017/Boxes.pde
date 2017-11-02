class Boxes{
  int r;
  PVector pos;
  PVector target, target2;
  PVector base = new PVector(0,0,0);
  Boxes(int _r){
    r = _r;
    PVector spot1 = base1.get(r);
    PVector spot2 = base2.get(r);
    pos = new PVector(spot1.x, spot1.y, spot1.z);
    target = new PVector(spot2.x, spot2.y, spot2.z);
    target2 = new PVector(spot1.x, spot1.y, spot1.z);
  }
  
  void update(boolean opened){
    if(opened){
      pos.lerp(target,0.1);
    }if(!opened){
      pos.lerp(target2,0.1);
    }
  }
  
  void display(){
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    point(0,0);
    popMatrix();
  }
}