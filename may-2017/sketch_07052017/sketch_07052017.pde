ArrayList<Courbe>courbe;
ArrayList<Circle>circle;
ArrayList<Square>square;
float x = 100,y;
float angle;
float speed = 0.09;
float count;
boolean form = false;
void setup(){
  size(500,500);
  smooth();
  noFill();
  courbe = new ArrayList<Courbe>();
  circle = new ArrayList<Circle>();
  square = new ArrayList<Square>();
}

void draw(){
  background(19,65,188);
  count++;
  strokeWeight(2);
  if(count==40){
    if(form){
    circle.add(new Circle(x,y));
    }else{
    square.add(new Square(x,y));
    }
    count = 0;
    if(form == false){
      form = true;
    }else{
      form = false;
    }
  }
  x++;
  y = 250 + sin(angle)*50;
  angle = angle+speed;
  courbe.add(new Courbe(x,y));
  if(x>width-100){
    x = 100;
  }
  
  for(int i = 0; i<courbe.size(); i++){
    Courbe c = courbe.get(i);
    c.display();
    if(c.end() == true){
      courbe.remove(i);
    }
  }
  for(int i = 0; i<circle.size(); i++){
    Circle c = circle.get(i);
    c.display();
    if(c.end() == true){
      circle.remove(i);
    }
  }
  for(int i = 0; i<square.size(); i++){
    Square s = square.get(i);
    s.display();
    if(s.end() == true){
      square.remove(i);
    }
  }
}