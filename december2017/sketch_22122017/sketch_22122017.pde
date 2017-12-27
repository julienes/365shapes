float angle = 0;
float speed = 0.03;
float e = 2;
boolean isGrow = true;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(1);
}

void draw(){
  update();
  background(6,7,175);
  translate(width/2, height/2);
  //rotateZ(angle);
  //rotateY(angle);
  float beta = 0;
  beginShape();
  while (beta < PI){
    float r = 0.8 + 1.6 * sin(6 * beta);
    float theta = 4 * beta;
    float phi = e * PI * sin(10 * beta);
    float x = 70 * (r * cos(phi) * cos(theta));
    float y = 70 * (r * cos(phi) * sin(theta));
    //float z = 20 * (r * sin(phi));
    
    beta += 0.001;
    vertex(x,y);
  }
  endShape();
  angle += speed;
}

void update(){
  if(isGrow){
    e+=0.1;
    if(e >= 10){
      isGrow = false;
    }
  }else if(!isGrow){
    e-=0.1;
    if(e <= 2){
      isGrow = true;
    }
  }
}