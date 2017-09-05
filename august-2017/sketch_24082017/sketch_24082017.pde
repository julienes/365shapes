ArrayList<Supershape>supershape;
int count = 0;

void setup(){
  size(500,500);
  smooth();
  noStroke();
  supershape = new ArrayList<Supershape>();
  for( int x = 100; x <= width-100; x+= 40){
    count++;
    for( int y = 100; y <= height-100; y+= 40){
      supershape.add(new Supershape(x,y,count));
    }
  }
}




void draw(){
  background(6,7,175);
  scale(0.7);
  translate(width/2-140, height/2-140);
  for(Supershape s : supershape){
    s.update();
    s.display();
  }
}