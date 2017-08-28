ArrayList<Wave>wave;
int i = 0;
int inc = 20;

void setup(){
  size(500,500);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(5);
  wave = new ArrayList<Wave>();
  for(int x = 100; x <= width-100; x+=inc){
    i++;
    for(int y = 100; y <= height-100; y+=inc){
      if(i%2 == 0){
        wave.add(new Wave(x,y,0, PI, inc));
      }else{
        wave.add(new Wave(x,y,PI, TWO_PI, inc));
      }
    }
  }
}


void draw(){
  background(6,7,175);
  for(Wave w : wave){
    w.update();
    w.display();
  }
}