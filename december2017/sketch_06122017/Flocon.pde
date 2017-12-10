class Flocon{
  PVector location = new PVector(random(-200, 200), 0);
  PVector base = new PVector(0,0);
  PVector acc = new PVector(0,1);
  float size = random(0.02, 0.3);
  float alpha = 255;
  Flocon(){
  
  }
  
  boolean isDead(){
    if(alpha <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void update(){
    acc = new PVector(random(-1,1), 1);
    base.add(acc);
    base.normalize();
    base.mult(1.5);
    location.add(base);
    alpha-=1;
  }
  
  void display(){
    stroke(255,alpha);
    pushMatrix();
      translate(location.x, location.y);
      scale(size);
      for(int i = 0; i < 5; i++){
        float angle = map(i, 0, 5, 0, TWO_PI);
        pushMatrix();
        rotate(angle);
        rect(-50,-100,100,100);
        triangle(0,-100,50,0,-50,0);
        popMatrix();
      }
    popMatrix();
  }
}