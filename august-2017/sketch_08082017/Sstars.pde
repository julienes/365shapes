class Sstars{
  ArrayList<ShootingStar>Sstar;
  PVector location = new PVector(random(width), random(height));
  PVector base = new PVector(0,0);
  PVector acceleration = new PVector(random(-1,1),random(-1,1));
  boolean dead = false;
  float alpha2 = 255;
  Sstars(){
    Sstar = new ArrayList<ShootingStar>();
  }
  
  boolean isDeadToo(){
    if(alpha2 <= 0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    createStar();
    randomize();
    starKilled();
    update();
  }
  
  void update(){
    base.add(acceleration);
    location.add(base);
  }
  
  void createStar(){
    for(int i = 0; i<=Sstar.size()-1; i++){
      ShootingStar s = Sstar.get(i);
      s.display();
      if(s.isDead() == true){
        Sstar.remove(i);
      }
    }
  }
  
  void starKilled(){
    alpha2-=1;
  }
  
  void randomize(){
      Sstar.add(new ShootingStar(location.x, location.y));
  }
}