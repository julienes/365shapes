float r=0;
float speed = 0;
boolean acc = false;
void setup(){
  size(500,500,P3D);
  smooth();
}

void draw(){
  spin();
  background(6,7,175);
  lights();
  fill(255);
  noStroke();
  translate(width/2, height/2);
  rotateX(-HALF_PI);
  rotateZ(r);
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