float l;
int total = 100;

float num1 = 34;
float num2 = 997;
float num3 = 954;
float num4 = 324;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i < 20; i++){
    blob(i);
  }
  num2+=0.01;
  num3+=0.01;
}

void blob(int r){
  beginShape();
      for(int i = 0 ; i < total; i++){
        float angle = map(i,0,total, 0, TWO_PI+0.1);
        float x = cos(angle);
        float y = sin(angle);
        float n = noise(x * num2,y * num3);
        l = map(n, 0,1, 0.01,0.02);
        vertex(x * l * r * 400, y * l * r * 400);
      }
   endShape();
}