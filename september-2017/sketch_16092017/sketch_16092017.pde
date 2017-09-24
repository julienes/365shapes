Flower[] flower = new Flower[20];
float angle = 0;
float speed = 0.02;
float a = 0;
void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  for(int i = 0 ; i < flower.length; i++){
    angle+=0.0001;
    float r = map(i, 0, flower.length, 50, 150);
    flower[i] = new Flower(r, angle);
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