class Sun{
  float x;
  float y;
  float t = random(0,10),t2 = random(0,10);
  Sun(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void display(){
    t+=0.5;
    t2+=0.1;
    float n = noise(t);
    float n2 = noise(t2);
    beginShape(LINES);
      vertex(x,y);
      vertex((x+n2)*10, (y+n2)*10);
      vertex((x+n2)*10, (y+n2)*10);
      vertex((x+n)*(15*n2), (y+n)*(15*n2));
      vertex((x+n)*(15*n2), (y+n)*(15*n2));
      vertex(x*16, y*16);
    endShape();
  }
}