float x,y;

float n = 0;
float u = 0;
float count = 0;
boolean grow = true;

void setup(){
  size(500,500);
  smooth();
  strokeWeight(5);
  stroke(255);
  
}

void draw(){
  count++;
  
  if(grow){
    if(count>=5){
      n++;
      count = 0;
      if(n>35){
        grow = false;
      }
    }
  }
  
  if(!grow){
    if(count>=5){
      n--;
      count = 0;
      if(n<0){
        grow = true;
      }
    }
  }
  background(6,7,175);
  translate(width/2, height/2);
  beginShape(LINES);
  for(float u = 0; u<=50; u+=0.01){
  x = cos(PI/n)*cos(PI/n*(2*floor(u)+1))-(2*u-2*floor(u)-1)*sin(PI/n)*sin(PI/n*(2*floor(u)+1));
  y = cos(PI/n)*sin(PI/n*(2*floor(u)+1))+(2*u-2*floor(u)-1)*sin(PI/n)*cos(PI/n*(2*floor(u)+1));
  vertex(x*100,y*100);
  }
  endShape();
}