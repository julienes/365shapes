ArrayList<Sun>sun;
void setup(){
  size(500,500);
  smooth();
  sun = new ArrayList<Sun>();
  for(int i = 0; i<50; i++){
    float v = map(i,0,50,0,TWO_PI);
    float x = sin(v)*10;
    float y = cos(v)*10;
    sun.add(new Sun(x,y,i));
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