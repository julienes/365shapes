class Pyramide{
  
  Pyramide(){
  
  }
  
  void display(){
    beginShape(TRIANGLE);
      vertex(-100, -100, -100);
      vertex( 100, -100, -100);
      vertex(   0,    0,  100);
      
      vertex( 100, -100, -100);
      vertex( 100,  100, -100);
      vertex(   0,    0,  100);
      
      vertex( 100, 100, -100);
      vertex(-100, 100, -100);
      vertex(   0,   0,  100);
      
      vertex(-100,  100, -100);
      vertex(-100, -100, -100);
      vertex(   0,    0,  100);
    endShape();
  }
}