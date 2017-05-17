float t = 50;
float r = 10;
float rotation;
float speed;
boolean acc = true;
ArrayList<PVector>tor;
void setup(){
  size(500,500, P3D);
  smooth();
  strokeWeight(2);
  tor = new ArrayList<PVector>();
  for(float i = 0; i<TWO_PI; i+=0.04){
    for(float j = 0; j<TWO_PI; j+=0.04){
      float x = (t + r * cos(j))*cos(i);
      float y = (t + r * cos(j))*sin(i);
      float z = r * sin(j);
      tor.add(new PVector(x,y,z));
    }
  }
}

void draw(){
  lights();
  background(6,7,175);
  noStroke();
  fill(255);
  translate(width/2, height/2);
  sphere(50);
  noFill();
  update();
  stroke(255);
  for(PVector torus : tor){
     beginShape(POINTS);
        vertex(torus.x,torus.y,torus.z);
      endShape();
  }
}

void update(){
  if(acc == false){
   speed+=0.01;
   rotateY(rotation);
   if(speed>= 1){
     acc = true;
   }
 }
 if(acc == true){
   speed-=0.01;
   rotateX(rotation);
   if(speed<= 0){
     acc = false;
   }
 }
 rotation=rotation+speed;
}