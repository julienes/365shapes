class Particle{
  float posiX, posiY, posiZ;
  float alpha = 150;
  Particle(PVector pos){
   posiX = pos.x;
   posiY = pos.y;
  }
  
  boolean isDead(){
    if(alpha <= 0 || posiY == height-100 || posiY == 100){
      
      return true;
    }else{
      return false;
    }
  }
  
  void edges(){
   if(posiX > width-100){
      posiX = width-100;
    }
    if(posiX < 100){
      posiX = 100;
    }
    if(posiY > height-100){
      posiY = height-100;
    }
    if(posiY < 100){
      posiY = 100;
    }
  }
  
  void display(float preposX, float preposY){
    alpha-=20;
    stroke(255, alpha);
    strokeWeight(1);
    if(!isDead()){
      line(preposX, preposY,posiX, posiY);
    }
  }
}