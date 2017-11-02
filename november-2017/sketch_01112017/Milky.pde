class Milky{
  PVector acc;
  PVector base = new PVector(0,0);
  Milky(){
  
  }
  
  void display(){
    for(int i = 0; i < total; i++){
      acc = PVector.random2D();
      base.add(acc);
      base.limit(1.5);
      PVector v1 = new PVector(branch[i].x, branch[i].y);
      v1.add(base);
      point(v1.x, v1.y);
    }
  }
}