class RondS {
  
  RondS(){
  
  }
  
  void display(){
    for(Rond r : rond){
      r.update();
      r.display();
    }
  }
}