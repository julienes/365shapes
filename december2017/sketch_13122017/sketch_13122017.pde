float[] posX;
float[] posY;
int total = 10;
float z = 150;

boolean down = true;

float a = 0;
float speed = 0.02;

float R = 150;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  strokeWeight(3);
  stroke(255);
  posX = new float[total+1];
  posY = new float[total+1];
  
  for(int i = 0; i <= total; i++){
    float angle = map(i, 0, total, 0, TWO_PI);
    float x = R * cos(angle);
    float y = R * sin(angle);
    posX[i] = x;
    posY[i] = y;
  }
}

void draw(){
  background(6,7,175);
  lights();
  update();
  translate(width/2, height/2);
  rotateX(PI/3 + a);
  rotateY(PI/3 + a);
  polygon();
  a+=speed;
}

void update(){ 
  if(down){
    z-=5;
    if(z <= -150){
      down = false;
    }
  }
  
  if(!down){
    z+=5;
    if(z >= 150){
      down = true;
    }
  }
}

void polygon() {
  pushMatrix();
  rotateZ(a);
  beginShape();
  for(int i = 0; i <= total; i++){
    if(i > 0){
      vertex(posX[i-1], posY[i-1]);
      vertex(posX[i], posY[i]);
    }
      vertex(0,0,z);
  }
  endShape();
  popMatrix();
  pushMatrix();
  rotateZ(-a);
  beginShape();
  for(int i = 0; i <= total; i++){
    if(i > 0){
      vertex(posX[i-1], posY[i-1]);
      vertex(posX[i], posY[i]);
    }
      vertex(0,0,-z);
  }
  endShape();
  popMatrix();
}