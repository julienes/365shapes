int a = 80;
int b = 70;
float t = 0;
ArrayList<Snake>snake;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  snake = new ArrayList<Snake>();
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  if(t>=PI){
    t+= 0;
  }else {
    t+=0.01;
    float x = (a*cos(3*t));
  float y = (a*sin(4*t));
  float z = (b*sin(17*t))*2;
  snake.add(new Snake(x,y,z));
  }
  for(int i = snake.size()-1; i>=0; i--){
    Snake s = snake.get(i);
    s.display();
    if(s.isDead()){
      snake.remove(i);
    }
  }
}