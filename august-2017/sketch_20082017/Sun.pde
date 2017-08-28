class Sun{
  PVector pos;
  float r;
  
  Sun(float x, float y){
    pos = new PVector(x,y);
    r = 30;
  }
  
  void show(){
    noFill();
    noStroke();
    ellipse(pos.x, pos.y, r*2, r*2);
  }
}