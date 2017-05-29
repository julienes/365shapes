ArrayList<Sun>sun;
void setup(){
  size(500,500);
  smooth();
  sun = new ArrayList<Sun>();
  for(int i = 0; i<100; i++){
    float v = i/TWO_PI;
    float x = sin(v)*10;
    float y = cos(v)*10;
    sun.add(new Sun(x,y));
  }
  stroke(255);
}

void draw(){
  translate(width/2, height/2);
  background(6,7,175);
  for(Sun s : sun){
    s.display();
  }
}