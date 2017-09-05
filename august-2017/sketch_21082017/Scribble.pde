class Scribble{
   PVector position;
   
  Scribble(float x, float y, float z){
    position = new PVector(x,y,z);
  }
  
  void display(){
    point(position.x, position.y, position.z);
  }
  
  
}