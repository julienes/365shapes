class Tunnel{
  PVector[][] donuts;
  float alpha = 255;
  int c = 100;
  int a = 10;
  int total = 30;
  float z = -200;
  float s = 0;
  Tunnel(){
    donuts = new PVector[total+1][total+1];
    for(int i = 0; i < total+1; i++){
      float v = map(i, 0, total, 0, TWO_PI);
        for(int j = 0; j < total+1; j++){
          float u = map(j, 0, total, 0, TWO_PI);
          float x = (c + a*cos(u)) * cos(v);
          float y = (c + a*cos(u)) * sin(v);
          float z = a * sin(u);
          donuts[i][j] = new PVector(x,y,z);
      }
    }
  }
  
  boolean isDead(){
    if(alpha <=-0){
      return true;
    }else{
      return false;
    }
  }
  
  void display(){
    pushMatrix();
    translate(0,0,z);
    scale(s);
    torus();
    popMatrix();
    z+=2;
    alpha-=2.5;
    s+=0.02;
  }
  
  void torus(){
    stroke(255,alpha);
    for(int i = 0; i < total; i++){
      beginShape(TRIANGLE_STRIP);
        for(int j = 0; j < total+1; j++){
          PVector v1 = donuts[i][j];
          vertex(v1.x, v1.y, v1.z);
          PVector v2 = donuts[i+1][j];
          vertex(v2.x, v2.y, v2.z);
      }
      endShape();
    }
  }
}