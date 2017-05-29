class Branche{
  float x,y;
  Branche(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void display(){
    beginShape(LINES);
      float x2 = x + noise(random(-5,5))*50;
      float y2 = y + noise(random(-50,0))*50;
      float x3 = x2 + noise(random(-5,5))*50;
      float y3 = y2 + noise(random(-50,0))*50;
      float x4 = x3 + noise(random(-5,5))*50;
      float y4 = y3 + noise(random(-50,0))*50;
      vertex(x,y);
      vertex(x2,y2);
      vertex(x2,y2);
      vertex(x3,y3);
      vertex(x3,y3);
      vertex(x4,y4);
    endShape();
  }
}