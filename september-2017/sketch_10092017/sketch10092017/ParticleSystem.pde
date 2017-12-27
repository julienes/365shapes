class ParticleSystem{
  float preposZ, preposX, preposY;
  float alpha = 255;
  ParticleSystem(float _preposX, float _preposY, float _preposZ){
    preposX = _preposX;
    preposY = _preposY;
    preposZ = _preposZ;
  }
  
  boolean isDead(){
    if(alpha < 0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    alpha-=10;
    stroke(255, alpha);
    strokeWeight(5);
    //point(posX, posY);
    point(preposX, preposY, preposZ);
  }
}