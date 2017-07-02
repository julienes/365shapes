ArrayList<Cube> cube;
int i = 0;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  cube = new ArrayList<Cube>();
  for(int x = 150; x <=350; x+=50){
    for(int y = 150; y <=350; y+=50){
      i++;
      println(i);
      cube.add(new Cube(x,y,i));
    }
  }
}

void draw(){
  lights();
  background(6,7,175);
  for(Cube c : cube){
    c.update();
    c.display();
  }
}