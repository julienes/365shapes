class Blob{
  PVector pos;
  float radius;
  PVector vel;
  float yoff = 0;
  float ctr = random(10);
  Blob(float x, float y, float r){
    pos = new PVector(x,y);
    radius = r;
    vel = new PVector(0,0);
  }
  
  void show(){
    noStroke();
    fill(255);
    pushMatrix();
    translate(pos.x, pos.y);
    beginShape();
    for(float a = 0; a < TWO_PI; a+=PI/200){
      float x = cos(a);
      float y = sin(a);
      float noi = noise(x+1, y+1, ctr);
      float d = radius + map(noi, 0,1, -20,20);
      vertex(d * x, d * y);
    }
    endShape();
    popMatrix();
    ctr += 0.04;
  }
}