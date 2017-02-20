class Ball{
  Ball(){
  
  }
  
  void display(){
    noStroke();
    fill(255);
    for(int i = -60; i<=60; i+=40){
      for(int j = -60; j<=60; j+=40){
          pushMatrix();
          translate(i,j);
          sphere(10);
          popMatrix();
      }
    }
  }
}