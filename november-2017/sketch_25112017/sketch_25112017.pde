ArrayList<Shape>shapes = new ArrayList<Shape>();
boolean minus = false;
float size = 1;
boolean changeShape = false;
int num;

void setup(){
  size(500,500);
  smooth();
  stroke(255);
  noFill();
  strokeWeight(10);
  shapes.add(new Square());
  shapes.add(new Circle());
  shapes.add(new Triangle());
  shapes.add(new Cross());
}

void draw(){
  background(6,7,175);
  update();
  translate(width/2, height/2);
  scale(size);
  if(minus && size <= 0.1){
    changeShape = true;
    num = floor(random(0,4));
  }
  
  Shape s = shapes.get(num);
  s.display();
}

void update(){
  if(!minus){
    size-=0.02;
    if(size<= 0){
      minus = true;
    }
  } 
  if(minus){
    size+=0.02;
    if(size>= 1){
      minus = false;
    }
  } 
}