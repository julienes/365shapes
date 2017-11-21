int R = 150;
float angle;
int count = 0;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  angle = angle + 0.02;
  rotateY(angle);
  rotateX(angle);
  beginShape(LINES);
  for(float i = 0; i <= TWO_PI; i+=TWO_PI/100){
    for(float j = 0; j <= TWO_PI; j+=TWO_PI/100){
      count++;
      float alpha = map(count, 0, 10000, 0, 150);
      stroke(255,alpha);
      float x = R * sin(i) * cos(i)*cos(j);
      float y = R * sin(i) *cos(j);
      float z = R * sin(j);
      //rotate(angle);
      vertex(x,y,z);
    }
  } 
  endShape();

  count = 0;
}