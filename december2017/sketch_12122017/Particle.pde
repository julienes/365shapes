class Particle{
  PVector p, p01d;
  float stepSize, angle;
  boolean isOutside = false;
  float noiseScale = 500;
  float noiseStrength = 10;
  Particle(){
    p = new PVector(random(10), random(10));
    p01d = new PVector(p.x, p.y);
    stepSize = random(1,10);
  }
  
  void update1(){
    angle = noise(p.x/noiseScale, p.y/noiseScale) * noiseStrength;
    p.x += cos(angle) * stepSize;
    p.y += sin(angle) * stepSize;
    
    if(p.x < 100){
      isOutside = true;
    }else if(p.x > width - 100){
      isOutside = true;
    }else if(p.y < 100){
      isOutside = true;
    }else if(p.y > height - 100){
      isOutside = true;
    }p.limit(1000);
    
        
    if(isOutside){
      p.x = random(width);
      p.y = random(height);
      p01d.set(p);
    }
    
    if(!isOutside){
      line(p01d.x, p01d.y, p.x, p.y);
      p01d.set(p);
    }
    
    isOutside = false;
  }
}