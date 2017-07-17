float inc = 0.0;
ArrayList<Tentacle>tentacle;
int total = 10;

void setup() {
size(500, 500);
stroke(255);
smooth();
tentacle = new ArrayList<Tentacle>();
for(int i = 0; i<=total; i++){
  float angle = map(i,0,total, 0, TWO_PI);
  tentacle.add(new Tentacle(0,20,angle));
}

}


void draw() {
  background(6,7,175);
  translate(width/2, height/2);
  for(Tentacle t : tentacle){
    t.display();
  }
}