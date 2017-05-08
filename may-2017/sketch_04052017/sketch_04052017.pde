ArrayList<Line>clock;
float x1;
float y1;
float angle;
float speed = 0.2;
float x2;
float y2;
float angle2;
float speed2 = 0.2/6;
float t;
float count1;
void setup(){
  size(500,500);
  smooth();
  clock = new ArrayList<Line>();
}

void draw(){
  count1++;
  t+=0.01;
  float n = noise(t);
  background(19,65,188);
  x1 = sin(angle2)*100*(n*1.5);
  y1 = cos(angle)*130*(n*1.5);
  x2 = sin(angle)*150*(n*1.5);
  y2 = cos(angle2)*150*(n*1.5);
  translate(width/2, height/2);
  for(int i = 0; i<clock.size(); i++){
    Line c = clock.get(i);
    c.update();
    c.display();
    if(c.isDead()){
      clock.remove(i);
    }
  }
  if(count1>50 && count1<=250){
  clock.add(new Line(x1,y1,x2,y2));
  }
  angle = angle - speed;
  angle2 = angle2 - speed2;
}