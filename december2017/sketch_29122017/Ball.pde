class Ball{
  float angle = random(0,30);
  float scalar = random(0,200);
  float x,y;
  float base = 0;
  float z = random(-5,5);
  float maxD = dist(0,0,-250,250);
  Ball(){
  
  }
  
  void display(){
    float d = dist(0,0,x,y);
    float s = map(d,0,maxD,1,20);
    float alpha = map(d,0,maxD,10,255);
    float scalar2 = sin(scalar);
    float scal = map(scalar2,-1,1,40,150);
    x = base + sin(angle) * scal;
    y = base + cos(angle) * scal;
    pushMatrix();
    noStroke();
    fill(255,alpha);
    translate(x,y,0);
    ellipse(0,0,s,s);
    popMatrix();
    scalar+=0.02;
  }
}