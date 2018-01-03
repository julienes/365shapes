float maxD;
float angle = 0;

void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  fill(255);
  maxD = dist(250,250,500,500);
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2 - 150, height/2 - 150);
  for(int x = 0; x <= 300; x+=20){
     for(int y = 0; y <= 300; y+=20){
       pushMatrix();
       float d = dist(x,y,width/2, height/2);
       float offset = map(d,0, maxD, -10, 10);
       float a = angle + offset;
       float s = map(sin(a), -1, 1, 1, 10);
       translate(x,y,0);
       sphere(s);
       popMatrix();
     } 
  }
  angle+=0.1;
}