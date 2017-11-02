class Particles{
  ArrayList<Particle>particle;
  float count = 0;
  float x = 0;
  float y = 0;
  ArrayList<PVector>coordinates;
  PVector position = new PVector(100,random(100, height-100));
  PVector move = new PVector(0,0);
  PVector acceleration = new PVector(x,random(-1,1));
  Particles(){
    particle = new ArrayList<Particle>();
    coordinates = new ArrayList<PVector>();
  }
  
  boolean isDisappear(){
    if(position.x > width - 100){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    if(count==0){
      y = random(-30,30);
    }
    
    acceleration = new PVector(x,y);
    
    if(count>10){
      count=0;
    }
    
    x++;
    count++;
    
    move.add(acceleration);
    move.limit(10);
    position.add(move);
    coordinates.add(new PVector(position.x, position.y));
    particle.add(new Particle(position));
    
      for(int i = particle.size()-1; i>=0; i--){
        Particle p = particle.get(i);
        p.edges();
        if(i > 1){
          PVector c = coordinates.get(i-1);
          float preposX = c.x;
          float preposY = c.y;
          p.display(preposX, preposY);
        }
        if(p.isDead()){
          particle.remove(i);
          coordinates.remove(i);
        }
      }
  }
}