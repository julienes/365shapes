class Sapin{
  float size;
  int total = 20;
  Sapin(float _size){
    size = _size;
  }
  
  void display(){
    pushMatrix();
    translate(0,-50 * -size * 2);
    scale(size);
    for(int i = 0; i < total; i++){
     float angle = map(i,0, total, 0, TWO_PI);
     pushMatrix();
     rotateY(angle);
     triangle(0, -50, 50, 50, -50, 50);
     popMatrix();
    }
    popMatrix();
  }
}