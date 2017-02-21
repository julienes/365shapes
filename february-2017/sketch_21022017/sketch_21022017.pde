ArrayList<Triangle> triangle;
float x, y;
float angle;
float speed = 0.008;
float base;

void setup(){
  size(500,500);
  smooth();
 triangle = new ArrayList<Triangle>();
  
}

void draw(){
   background(7,11,96);
  translate(width/2, height/2);
  for(int i = 0; i<triangle.size(); i++){
    Triangle t = triangle.get(i);
    pushMatrix();
    move();
    t.update();
    t.display();
    popMatrix();
    if(t.isDead()){
      triangle.remove(i);
    }
  }
  triangle.add(new Triangle(x,y));
}

void move(){
    x = base + sin(angle)*150;
    y = base + cos(angle)*150;
    angle = angle + speed;
}