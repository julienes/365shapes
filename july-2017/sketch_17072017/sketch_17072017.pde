ArrayList<Triangle>triangle;
float r;
int total = 20;
void setup(){
  size(500,500);
  smooth();
  stroke(6,7,175);
  triangle = new ArrayList<Triangle>();
  for(int i = 0; i<= total; i++){
    float maxAngle = map(i, 0, total, 0, TWO_PI);
    float speed = map(i,0,total, 0.05, 0.5);
    triangle.add(new Triangle(maxAngle, speed,i));
  }
}

void draw(){
  background(6,7,175);
   translate(width/2, height/2);
   scale(1.5);
   for(Triangle t : triangle){
   t.update();
   t.display();
   }
 }