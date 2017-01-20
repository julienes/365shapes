ArrayList <Carre> carre;

void setup(){
  size(500,500, P3D);
  smooth();
  carre = new ArrayList <Carre>();
  for(int i = 100; i<=400; i+=50){
    for(int j = 100; j<=400; j+=50){
      carre.add(new Carre());  
    }
  }
}

void draw(){
  background(6,7,175);
  noFill();
  stroke(255);
  for(Carre c : carre){
    for(int i = 100; i<=400; i+=50){
      for(int j = 100; j<=400; j+=50){
        pushMatrix();
        translate(i,j);
        c.rotation();
        c.display();
        popMatrix();
      }
    }
  }
}