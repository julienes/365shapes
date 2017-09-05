Square[] square = new Square[250];

void setup(){
  size(500,500,P3D);
  smooth();
  rectMode(CENTER);
  stroke(6,7,175);
  for(int i = 0; i<=square.length-1; i++){
    float angle = map(i,0,square.length-1, -PI,PI);
    float z = i;
    square[i] = new Square(angle, z);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2-150, height/2);
  scale(1.2);
  rotateY(PI/3);
  for(int i = 0; i<=square.length-1; i++){
    square[i].display();
  }
}