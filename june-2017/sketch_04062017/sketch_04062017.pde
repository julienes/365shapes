ArrayList<Square> square;
float n = 5;
float r = 0;
float d = 0;
void setup(){
  size(500,500,P3D);
  smooth();
  stroke(6,7,175);
  square = new ArrayList<Square>();
  for(float u = 0; u<=10; u+=0.2){
    r+=0.1;
    d+=0.01;
    float x = cos(PI/n)*cos(PI/n*(2*floor(u)+1))-(2*u-2*floor(u)-1)*sin(PI/n)*sin(PI/n*(2*floor(u)+1));
    float y = cos(PI/n)*sin(PI/n*(2*floor(u)+1))+(2*u-2*floor(u)-1)*sin(PI/n)*cos(PI/n*(2*floor(u)+1));
    square.add(new Square(x*100,y*100,r,d));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(Square s: square){
    s.update();
    s.display();
  }
}