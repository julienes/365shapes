class Particle{
  PVector location = new PVector(random(-100,100), random(-100,100));
  Particle(){
  
  }
  
  void display(){
    location.limit(300);
    ellipse(location.x, location.y, 10,10);
  }
}