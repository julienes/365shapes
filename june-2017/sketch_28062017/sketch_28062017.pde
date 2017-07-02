float r = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
}

void draw(){
  r+=0.01;
  translate(width/2, height/2);
  rotateY(r);
  rotateX(r);
  background(6,7,175);
  fill(255);
  //lights();
  float r = 100;
  int total = 10;
  for(int i = 0; i< total; i+=2){
    float lon = map(i, 0, total, 0, PI);
     for(int j = 0; j< total; j+=1){
       float lat = map(j, 0, total, 0, TWO_PI);
       float x = r * sin(lat) * cos(lon);
       float y = r * sin(lat) * sin(lon);
       float z = r * cos(lat);
       pushMatrix();
       translate(x,y,z);
       sphere(20);
       popMatrix();
     }
  }
  fill(6,7,175);
  sphere(110);
}