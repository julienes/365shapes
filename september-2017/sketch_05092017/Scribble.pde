class Scribble{
  float alpha = 255;
  PVector v;
  Scribble(float x, float y, float z){
    v = new PVector(x,y,z);
  }
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  void display(){
    stroke(255, alpha);
    PVector offset = PVector.random3D();
    offset.mult(0.3);
    v.add(offset);
    vertex(v.x, v.y, v.z);
    alpha-=1;
  }
}