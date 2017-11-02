class Cake{
  float H;
  float R;
  Cake(float h, float r){
  H = h;
  R = r;
  }
  
  void display(){
    pushMatrix();
    translate(0,0,-H*4);
    beginShape();
      for(int i = 0; i < 100; i++){
        for(float j = 0; j < H; j++){
          float theta = map(i, 0, 100, 0, TWO_PI);
          float x = R * cos(theta);
          float y = R * sin(theta);
          float z = j;
          if(i%2 == 0){
            stroke(6,7,175);
          }else{
            stroke(255);
          }
          vertex(x,y,z);
        }
      }
    endShape();
    popMatrix();
  }
}