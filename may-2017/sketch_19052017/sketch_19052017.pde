ArrayList<Square>square;
float x,y;
float angle;
float speed = 0.05;
float rotate;

void setup(){
  size(500,500);
  smooth();
  square = new ArrayList<Square>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  move();
  for(int i = square.size()-1; i >=0; i--){
    Square s = square.get(i);
    s.update();
    s.display();
    if(s.isDead()){
        square.remove(i);
     }
  }
  square.add(new Square(x,y, angle));

}

void move(){
  x = sin(angle)*100;
  y = cos(angle)*100;
  angle = angle + speed;
}