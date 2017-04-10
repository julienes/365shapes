float a;
Box b;

ArrayList<Box> sponge;
void setup(){
  size(500,500,P3D);
  sponge = new ArrayList<Box>();
  smooth();
  b = new Box(0,0,0,150);
  sponge.add(b);
}

void draw(){
  lights();
  background(5,15,230);
  noStroke();
  noFill();
  
  translate(width/2, height/2);
  rotateX(a);
  rotateZ(a);
  for(Box b : sponge) {
  b.show();
  }
  a+=0.01;
}

void mousePressed(){
  ArrayList<Box> next = new ArrayList<Box>(); 
  for(Box b : sponge){
  ArrayList<Box> newBoxes = b.generate();
  next.addAll(newBoxes); 
  }
  sponge = next;
}