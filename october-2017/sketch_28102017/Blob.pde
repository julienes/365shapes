class Blob{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  float alpha = 255;
  int ab = 456;
  float tweet = 200;
  float ctr = 0.04;
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
    for(float a = 0; a < TWO_PI+0.2; a+=PI/50){
      float x = cos(a);
      float y = sin(a);
      float noi = noise(x, y, ctr);
      float d = radius + map(noi, 0,1, -ab,ab);
      if( d > 100 && d < 1000){
        d /= 5;
      }else if( d >= 1000 && d < 10000){
        d /= 50;
      }else if( d >= 10000){
        d /= 500;
      }
      
      if( d < -100 && d > -1000){
        d /= 5;
      }else if( d <= -1000 && d > -10000){
        d /= 50;
      }else if( d <= -10000){
        d /= 500;
      }
     
      vertex(d * x * 2, d * y * 2);
    }
    endShape();
    popMatrix();
    ctr += 0.0005;
  }
}