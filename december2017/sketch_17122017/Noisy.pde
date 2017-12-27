class Noisy{
  int var01 = 454;
  int var02 = 264;
  int var03 = 370;
  int var04 = 40;
  int scalar;
  int total = 200;
  int R = 1;
  float t = 0;
  float angle;
  
  Noisy(int _scalar, float _angle){
    scalar = _scalar;
    angle = _angle;
  }  
  
  void display(){
    pushMatrix();
    rotateX(angle);
    rotateY(angle);
    beginShape();
    for(int i = 0; i <= 200; i++){
      float angle = map(i, 0, total, 0, TWO_PI);
      float x = cos(angle);
      float y = sin(angle);
      float n = noise(x + var03 + t, y + var04 + t);
      float l = map(n, -1, 1,0, 4);
      float posX = x * l * R * scalar;
      float posY = y * l * R * scalar;
      vertex(posX, posY);
    }
    endShape();
    popMatrix();
    t+=0.01;
  }
}