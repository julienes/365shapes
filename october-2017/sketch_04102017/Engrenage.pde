class Engrenage{
  Flower[] flower = new Flower[2];
  float angle = 0;
  float speed = 0.08;
  float a = 0;
  float x, y;
  Engrenage(float _x, float _y){
    for(int i = 0 ; i < flower.length; i++){
      angle+=0.001;
      flower[i] = new Flower(i, angle);
    }
    x = _x;
    y = _y;
  }
  
  void display(){
    pushMatrix();
    translate(x, y);
    rotate(a);
    a = a + speed;
    for(int i = 0 ; i < flower.length; i++){
      flower[i].display();
    }
    popMatrix();
  }
  
}