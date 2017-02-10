float r = 0.00005;
void setup(){
  size(500,500,P3D);
  smooth();
}

void draw(){
  background(7,11,96);
  stroke(7,11,96);
  r += 0.00008;
  translate(width/2-90, height/2);
  for(int i = 0; i< 200; i+=10){
    for(int j = 0; j<=100; j+=10){
      for(int k = 0; k<=100; k+=10){
    rotateX(r);
    pushMatrix();
    translate(i,j, k);
    box(10,10,10);
    popMatrix();
      }
    }
  }
}