int total = 500;
float k = 0;
float a = 2.5;
boolean grow = true;
float r = 0;
float speed = 0.02;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
}

void draw(){
  change();
  background(6,7,175);
  translate(width/2, height/2);
  rotate(r);
  beginShape(LINES);
  for(int i = 0 ; i < total; i++){
    float angle = map(i, 0, total, 0, PI*9);
    float angle2 = map(i, 0, total, 0, -PI*9);
    float x = a * (angle * cos(angle) + (k * angle));
    float y = a * angle * sin(angle);
    float x1 = a * (angle2 * cos(angle2) + (k * angle2));
    float y1 = a * angle2 * sin(angle2);
    vertex(x,y);
    vertex(x1,y1);
  }
  endShape();
}

void change(){
   if(grow){
     k+=0.02;
     if(k >=2){
       grow = false;
     }
   }
   if(!grow){
     k-=0.02;
     if(k <= -2){
       grow = true;
     }
   }
   
   r+=speed;
}