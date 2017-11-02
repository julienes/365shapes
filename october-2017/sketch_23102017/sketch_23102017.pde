float total = 80;
float angle;

void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
}

void draw(){
  background(6,7,175);
  translate(0,height/2);
  for(int i = 0; i < total; i++){
    float offSet = TWO_PI/total*i;
    float size = map(cos(angle+offSet*4), -1, 1, 10, 50);
    float posX = map(i, 0 , total, 100, 400);
    float y = map(cos(angle+offSet), -1,1,-100,100);
    pushMatrix();
    translate(posX, y, 0);
    sphere(size);
    popMatrix();
  }
  
  angle+=0.02;
}