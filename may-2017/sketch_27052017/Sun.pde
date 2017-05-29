class Sun{
  float x;
  float y;
  float t = random(0,10),t2 = random(0,10);
  float s = random(10,15);
  float s2 = random(15,20);
  int w;
  Sun(float _x, float _y, int _w){
    x = _x;
    y = _y;
    w = _w;
  }
  
  void display(){
    if(w%2==0){
      strokeWeight(4);
    }else{
      strokeWeight(1);
    }
    s+=0.05;
    float s1 = noise(s);
    float s1t = map(s1,0,1,10,15);
    s2+=0.05;
    float s12 = noise(s2);
    float s2t = map(s12,0,1,15,20);
    t+=0.02;
    float n = noise(t);
    float nm = map(n,0,1,-2,2);
    t2+=0.02;
    float n2 = noise(t2);
    float n2m = map(n2,0,1,-2,2);
    beginShape(LINES);
      vertex(x,y);
      vertex((x+nm)*10,(y+nm)*10);
      vertex((x+nm)*10,(y+nm)*10);
      vertex((x+n2m)*s1t,(y+n2m)*s1t);
      vertex((x+n2m)*s1t,(y+n2m)*s1t);
      vertex(x*s2t,y*s2t);
    endShape();
  }
}