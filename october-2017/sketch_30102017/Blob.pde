class Blob{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  float alpha = 255;
  int ab = 160;
  float tweet = 200;
  float ctr = 0.04;
  Blob(float x, float y, float r, float opacity){
    pos = new PVector(x,y);
    radius = r/4;
    vel = new PVector(0,0);
    alpha = opacity;
  }
  
  boolean isDead(){
    if(alpha<=0){
      return true;
    }else{
      return false;
    }
  }
  
  void update(){
    alpha-=20;
  }
  
  void show(){
    noFill();
    stroke(255, alpha);
    pushMatrix();
    translate(pos.x, pos.y);
    beginShape();
    for(float a = 0; a < TWO_PI+0.2; a+=PI/50){
      float x = radius * cos(a);
      float y = radius * sin(a);
      float noi = noise(x, y, ctr);
      float d = radius + map(noi, 0,1, -ab,ab);
     
      vertex(d * x,d * y);
    }
    endShape();
    popMatrix();
    ctr += 0.005;
  }
}