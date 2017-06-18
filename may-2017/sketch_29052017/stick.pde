class Stick{
  float x,y;
  float s;
  int max;
  float t = random(0,100);
  Stick(float _x, float _y, float _s, int _max){
    x = _x;
    y = _y;
    s = _s;
    max = _max;
  }
  
  void display(){
    t+=s;
    float n = noise(t);
    float m = map(n,0,1,0,max);
    beginShape(LINES);
    vertex(x,y,0);
    vertex(x,y,m);
    endShape();
  }
}