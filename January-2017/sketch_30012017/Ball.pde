class Ball{
  float t = random(0,1);
  float n;
  float r1 = random(width/2-50, width/2+50);
  float r2 = random(height/2-50, height/2+50);
  Ball(){
  
  }
  
  void update(){
    t = t + 0.03;
    n = noise(t);
  }
  
  void display(){
    lights();
    spotLight(51, 102, 126, 50, 50, 200,0, 0, -1, 0, 200); 
    noStroke();
    pushMatrix();
    translate(r1, r2);
    sphere(n*100);
    popMatrix();
  }
}