class Exagone{
  float n1 = 40;
  float n2 = 80;
  float s = 1;
  float alpha = 255;
  float r;
  float angle;
  float x,y;
  boolean grow = true;
  Exagone(float _r, float _s, float _n1, float _n2){
    r = _r;
    s = _s;
    n1 = _n1;
    n2 = _n2;
  }
  
  boolean isDead(){
    if(alpha<=0){
        return true;
    }else{
       return false;
    }
  }
  
  void display(){
    angle = r;
    alpha-=15;
    noFill();
    rotate(r);
    scale(s);
    stroke(255,alpha);
    beginShape(LINES);
      vertex(-n1,-n2);
      vertex(n1,-n2);
      vertex(n1,-n2);
      vertex(n2,0);
      vertex(n2,0);
      vertex(n1,n2);
      vertex(n1,n2);
      vertex(-n1,n2);
      vertex(-n1,n2);
      vertex(-n2,0);
      vertex(-n2,0);
      vertex(-n1,-n2);
    endShape();
  }
}