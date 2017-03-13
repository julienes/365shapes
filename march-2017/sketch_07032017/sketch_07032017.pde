PImage img;
float rotation = 90;
float rotationX = 90;
PShape globe;
void setup(){
  size(500,500, P3D);
  smooth();
  img = loadImage("eye.jpg");
}

void draw(){
  rotation = map(mouseX, 0, width, 0, 3);
  rotationX = map(mouseY, 0, height, 1.5, -1.5);
  noStroke();
  noFill();
  globe = createShape(SPHERE, 100);
  globe.setTexture(img);
  background(5,15,230);
  lights();
  translate(width/2, height/2);
  rotateY(rotation);
  rotateZ(rotationX);
  shape(globe);
  println(rotation);
}