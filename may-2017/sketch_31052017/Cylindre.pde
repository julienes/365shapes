class Cylindre{
  PVector [][] cylindre;
  int total = 11;
  float r = 80;
  float up = 0;
  boolean grow = true;
  float rotate;
  float ctr = random(10);
  Cylindre(float _n){
    cylindre = new PVector[total+1][total+1];
    rotate = _n;
  }
  
  void display(){
    if(grow){
      up+=0.3;
      if(up>=10){
        grow = false;
      }
     }
     if(!grow){
      up-=0.3;
      if(up<=-15){
        grow = true;
      }
     }
    rotateY(rotate);
  for(int i = 0; i<total+1; i++){
    for(int j = 0; j<total+1; j++){
      float lat = map(j,0, total, 0, TWO_PI);
      float x = r * cos(lat);
      float y = r * sin(lat);
      float z = i*up;
      float noi = noise(x+1, y+1, ctr);
      float d = 1 + map(noi, 0,1, -5,5);
      cylindre[i][j] = new PVector(x*d,y*d,z*d);
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
  }
}