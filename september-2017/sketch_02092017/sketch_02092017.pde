Cylindre[] c = new Cylindre[20];
float angle = 0;
float angle2 = HALF_PI;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  fill(255);
  for(int i = 0; i<=c.length-1; i++){
    float n = map(i, 0, c.length-1, 0, TWO_PI);
    c[i] = new Cylindre(n);
  }
}

void draw(){
   background(6,7,175);
   lights();
   translate(width/2, height/2);
   rotateY(angle);
   for(int i = 0; i<=c.length-1; i++){
     c[i].display();
   }
   angle+=0.03;
}