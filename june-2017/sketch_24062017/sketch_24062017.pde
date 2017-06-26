ArrayList<Snake>snake;
float x,y;
float t;
float count = 0;
int delay = 0;

void setup(){
 size(500,500);
 smooth();
 snake = new ArrayList<Snake>();
 noStroke();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  delay++;
  if(delay>=5){
  count++;
  delay = 0;
  if(count<=80){
    snake.add(new Snake(count));
  }
  }
  for(Snake s : snake){
    s.update();
    s.display();
  }
}