import peasy.*;
PeasyCam cam;
float z = -100;


void setup(){
   size(500,500, P3D);
   smooth();
   cam = new PeasyCam(this, z);
}

void draw(){
  cam.lookAt(0, 0, z);
  background(5,15,230);
  lights();
  fill(255);
  noStroke();
  for(int i = 0; i< 200; i+=10){
    pushMatrix();
    translate(0,0, i*10);
    tunnel();
    popMatrix();
  }
  z+=70;
}

void tunnel(){
  for(float i = 0; i<TWO_PI; i+=TWO_PI/20){
     float x = sin(i) * 100;
     float y = cos(i) * 100;
     pushMatrix();
     translate(x,y);
     sphere(10);
     popMatrix();
   }
}