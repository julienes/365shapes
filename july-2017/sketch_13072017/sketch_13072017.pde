ArrayList<Trait> trait;
int total = 100;
int scalar1 = 50;
int scalar2 = 150;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  trait = new ArrayList<Trait>();
  for(int i = 0; i<=total; i++){
    float angle = map(i,0,total,0, TWO_PI);
    float x1 = scalar1 * cos(angle);
    float y1 = scalar1 * sin(angle);
    float x2 = scalar2 * cos(angle);
    float y2 = scalar2 * sin(angle);
    trait.add(new Trait(x1, x2, y1, y2, i));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(Trait t : trait){
    t.update();
    t.display();
  }
}