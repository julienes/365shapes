ArrayList<halfCircle>halfC;
float rotation;

void setup(){
  size(500,500);
  smooth();
  fill(255);
  noStroke();
  halfC = new ArrayList<halfCircle>();
  for(int x = -100; x <= 100; x+=15){
    rotation+=PI;
    for(int y = -100; y <= 100; y+=15){
      halfC.add(new halfCircle(x,y, rotation));
    }
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotate(QUARTER_PI);
   for(halfCircle hc : halfC){
     hc.display();
   }
}