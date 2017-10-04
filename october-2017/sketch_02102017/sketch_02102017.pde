Flower[] flower = new Flower[40];
float angle = 0;
float speed = 0.08;
float a = 0;
void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(2);
  for(int i = 0 ; i < flower.length; i++){
    angle+=0.001;
    flower[i] = new Flower(i, angle);
  }
}




void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotate(a);
  for(int i = 0 ; i < flower.length; i++){
    flower[i].display();
  }
  a = a + speed;
}