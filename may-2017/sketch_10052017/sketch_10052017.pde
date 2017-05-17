float x1,y1,x2,y2;
float angle, angle2;
float speed1 = 0.05;
float speed2 = 0.05*10;
boolean drawing = true;
void setup(){
 size(500,500);
 smooth();
 background(6,7,175);
 stroke(255);
 fill(6,7,175);
}

void draw(){
  translate(width/2, height/2);
  x1 = sin(angle)*100;
  y1 = cos(angle)*100;
  x2 = sin(angle2)*50;
  y2 = cos(angle2)*50;
  if(drawing){
    line(x1,y1,x2,y2);
    ellipse(x1,y1,5,5);
    ellipse(x2,y2,5,5);
    if(angle>TWO_PI*2){
      drawing = false;
    }
    angle = angle + speed1;
    angle2 = angle2 + speed2;
  }
}