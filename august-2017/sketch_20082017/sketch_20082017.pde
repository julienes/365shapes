Sun s = new Sun(250,250);
color c = color(6,7,175);
float x1, y1;
float angle = 3.0;
void setup(){
  size(500,500);
  smooth();
}

void draw(){
  loadPixels();
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      int index = x + y * width;
      float d = dist(x,y,s.pos.x, s.pos.y);
      float col1 = 100 * s.r / (d);
      float t1 = constrain(col1,6,255);
      float t2 = constrain(col1,7,255);
      float t3 = constrain(col1,175,255);
      pixels[index] = color(t1, t2, t3);
    }
  }
  updatePixels();
  s.show();
  pushMatrix();
  translate(width/2, height/2);
  moon();
  popMatrix();
}

void moon(){
  translate(0,250);
  speed();
  x1 = 250 * cos(angle);
  y1 = 250 * sin(angle);
  fill(6,7,175);
  noStroke();
  ellipse(x1,y1,20,20);
}

void speed(){
  if(angle >= 4.6 && angle<=4.85){
    angle+=0.0005;
  }else{
    angle+=0.01;
  }
  
  if(angle>7){
    angle = 3;
  }
}