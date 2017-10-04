float r=0;
float speed = 0;
boolean acc = false;
float a = 0;
float x,y;
float R = 10;
void setup(){
  size(500,500,P3D);
  smooth();
  strokeWeight(5);
}

void draw(){
  //spin();
  turn();
  background(6,7,175);
  lights();
  noFill();
  stroke(255);
  translate(width/2, height/2);
  rotateX(R* x);
  //rotateY(y);
  rotateZ(R*y);
  beginShape(TRIANGLE);
    vertex(-100, -100, -100);
    vertex( 100, -100, -100);
    vertex(   0,    0,  100);
    
    vertex( 100, -100, -100);
    vertex( 100,  100, -100);
    vertex(   0,    0,  100);
    
    vertex( 100, 100, -100);
    vertex(-100, 100, -100);
    vertex(   0,   0,  100);
    
    vertex(-100,  100, -100);
    vertex(-100, -100, -100);
    vertex(   0,    0,  100);
  endShape();
}

void spin(){
  if(acc == false){
   speed+=0.01;
   if(speed> 3){
     acc = true;
   }
 }
 if(acc == true){
   speed-=0.01;
   if(speed< 0){
     acc = false;
   }
 }
 r=r+speed;
}

void turn(){
  x = cos(a);
  y = sin(a);
  
  a = a + 0.002;
}