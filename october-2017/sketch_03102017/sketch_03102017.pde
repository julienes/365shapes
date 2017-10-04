Vif vif = new Vif();
Vif vif2 = new Vif();
float speed = 0.3;
float a = PI;
float b = 0;
float h = 0;
boolean up = false;
void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(2);
}




void draw(){
  background(6,7,175);
  translate(width/2, height/2 + h);
  fly();
  pushMatrix();
  rotate(a);
  vif.display();
  popMatrix();
  pushMatrix();
  rotateX(PI);
  rotate(b);
  vif2.display();
  popMatrix();
}

void fly(){
  if(!up){
    a-= speed;
    b-= speed;
    h-= 14;
    if(a <= HALF_PI){
      up = true;
    }
  }
  if(up){
    a+= speed;
    b+= speed;
    h+=14;
    if(a >= PI){
      up = false;
    }
  }
}