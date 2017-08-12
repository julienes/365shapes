class Particle{
  PVector location;
  PVector base = new PVector(0,0);
  PVector acceleration;
  PVector target;
  int count = 0;
  int count2 = 0;
  
  Particle(float x, float y){
    location = new PVector(x,y);
    target = new PVector(x,y);
  }
  
  void update(){
    count++;
    if(count <=150){
      acceleration = PVector.random2D();
      base.add(acceleration);
      base.normalize();
      base.mult(1.2);
      location.add(base);
    }else{
      location.lerp(target,0.1);
      count2++;
      if(count2>=100){
        count = 0;
        count2 = 0;
      }
    }
  }
  
  void display(){
    ellipse(location.x, location.y, 5,5);
  }
}