class Arc{
  float r = random(0,100);
  float acceleration = random(0.009, 0.04);
  float x = 50;
  float y = 50;
  Arc(){
  
  }
  
  
  void move(){
    r  = r+acceleration;
    rotate(r);
  }
  
  void display(){
    translate(-x,-y);
    beginShape();
    vertex(0,0);
    bezierVertex((x+x)*0.25, -30, (x+x)*0.75, -30, x+x, 0);
    endShape();
    beginShape();
    vertex(0,0);
    vertex(x,y);
    vertex(x+x,0);
    endShape();
  }
  
  void colors(){
      fill(255, 100);
      strokeWeight(0.5);
      stroke(6,7,175);
  }
}