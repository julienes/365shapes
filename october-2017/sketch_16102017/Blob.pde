class Blob{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  float alpha = 255;
  float ctr = random(10);
  Blob(float x, float y, float r, float opacity){
    pos = new PVector(x,y);
    radius = r;
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
    for(float a = 0; a < TWO_PI+02; a+=PI/200){
      float x = cos(a);
      float y = sin(a);
      float noi = noise(x, y, ctr);
      float d = radius + map(noi, 0,1, -50,50);
      vertex(d * x, d * y);
    }
    endShape();
    popMatrix();
    ctr += 0.004;
  }
}