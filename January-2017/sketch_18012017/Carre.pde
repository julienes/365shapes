class Carre{
  float r = 0;
  Carre(){
   
  }
  
  void rotation(){
    r = r+0.001;
    rotateX(r);
    rotateY(r);
  }
  
  void display(){
    box(50);
  }
}