Line[] line = new Line[126];
int constant = 250;
float angle = 0.05;
int scalar = 100;
float scalar2;
float speed = 0.05;
float increase = 0;
float size =10;
boolean grow = true;

void setup(){
size(500,500);
smooth();
frameRate(10);
for(int i=0; i<line.length; i++){
  line[i] = new Line(250, 250, 250,250);
}
}

void draw(){
  background(6,7,175);
   for(int i = 0; i<line.length; i++){
     println(i);
    fill(6,9,175);
    stroke(255);
    line[i].display();
     line[i].resized();
   }
}

class Line{
  float x, y, x2, y2;
  Line(float new_x, float new_y, float new_x2, float new_y2){
    x = new_x;
    y = new_y;
    x2 = new_x2;
    y2 = new_y2;
  }
  
  void display(){
    line(x,y,x2,y2);
  }
  
  void resized(){
    scalar2 = random(110,200);
    x = constant + sin(angle) * scalar;
    y = constant + cos(angle) * scalar;
    x2 = constant + sin(angle) * scalar2;
    y2 = constant + cos(angle) * scalar2;
    angle = angle + speed;
  }
}