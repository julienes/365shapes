class Cylindre{
  PVector [][] cylindre;
  int total = 15;
  float r = 10;
  float n;
  Cylindre(float _n){
    cylindre = new PVector[total+1][total+1];
    n = _n;
  }
  
  void display(){
  pushMatrix();
  rotateX(n);
  for(int i = 0; i<total+1; i++){
    for(int j = 0; j<total+1; j++){
      float lat = map(j,0, total, 0, TWO_PI);
      float x = r * cos(lat);
      float y = r * sin(lat);
      float z = i*10;
      cylindre[i][j] = new PVector(x,y,z);
    }
  }
  for(int i = 0; i<total; i++){
    beginShape(TRIANGLE_STRIP);
    for(int j = 0; j<total+1; j++){
     PVector v = cylindre[i][j];
      vertex(v.x, v.y, v.z);
      PVector v2 = cylindre[i+1][j];
      vertex(v2.x, v2.y, v2.z);
    }
    endShape();
  }
  popMatrix();
  }
}