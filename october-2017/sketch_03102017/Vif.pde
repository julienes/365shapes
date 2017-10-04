class Vif{
  Flower[] flower = new Flower[40];
  float angle = 0;
  Vif(){
    for(int i = 0 ; i < flower.length; i++){
      angle+=0.001;
      flower[i] = new Flower(i, angle);
    }
  }
  
  void display(){
    for(int i = 0 ; i < flower.length; i++){
      flower[i].display();
    }
  }
}