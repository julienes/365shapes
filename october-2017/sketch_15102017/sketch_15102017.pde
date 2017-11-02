Flower[] flower = new Flower[100];
float angle = 0;
float speed = 0.02;
float a = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  for(int i = 0 ; i < flower.length; i++){
    angle+=0.0001;
    flower[i] = new Flower(i, angle);
  }
}




void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateY(PI/4);
  pushMatrix();
  rotateY(HALF_PI);
  for(int i = 0 ; i < flower.length; i++){
    float zed = map(i ,0, flower.length,0,2);
    translate(0,0,zed);
    flower[i].display();
  }
  popMatrix();
  pushMatrix();
  rotateY(-HALF_PI);
  for(int i = 0 ; i < flower.length; i++){
    float zed = map(i ,0, flower.length,0,2);
    translate(0,0,zed);
    flower[i].display();
  }
  popMatrix();
  a = a + speed;
}