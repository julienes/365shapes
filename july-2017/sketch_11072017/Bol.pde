class Bol{
  PVector[][] globe;
  int total = 50;
  float r;
  float angle = 0;
  float speed = 0.01;
  Bol(float rayon, float _speed){
    r = rayon;
    globe = new PVector[total+1][total+1];
    //speed = _speed;
  }
  
  void display(){
    angle+=speed;
    for (int i = 0; i < total+1; i++) {
      float lat = map(i, 0, total, 0, HALF_PI);
      for (int j = 0; j < total+1; j++) {
        float lon = map(j, 0, total, 0, TWO_PI);
        float x = r * sin(lat) * cos(lon);
        float y = r * sin(lat) * sin(lon);
        float z = r * cos(lat);
        globe[i][j] = new PVector(x, y, z);
      }
    }
    rotateX(angle);
    rotateY(angle);
    form();
  }
  
  void form(){
    for (int i = 0; i < total; i++) {
      beginShape(TRIANGLE_STRIP);
      for (int j = 0; j < total+1; j++) {
        strokeWeight(1);
        PVector v1 = globe[i][j];
        vertex(v1.x, v1.y, v1.z);
        PVector v2 = globe[i+1][j];
        vertex(v2.x, v2.y, v2.z);
      }
      endShape();
    }
  }
}