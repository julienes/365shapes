
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
}

void draw(){
  
  translate(width/2, height/2);
  background(6,7,175);
  lights();
  float r = 100;
  int total = 30;
  for(int i = 0; i< total; i+=5){
    float lon = map(i, 0, total, -PI, PI);
     for(int j = 0; j< total; j+=5){
       float lat = map(j, 0, total, -HALF_PI, HALF_PI);
       float x = r * sin(lon) * cos(lat);
       float y = r * sin(lon) * sin(lat);
       float z = r * cos(lon);
       pushMatrix();
       translate(x,y,z);
       sphere(20);
       popMatrix();
     }
  }
  fill(255);
  sphere(100);
}