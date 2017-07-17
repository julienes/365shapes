float inc = 0.0;
void setup() {
size(500, 500);
stroke(255);
smooth();
}
void draw() {
background(6,7,175);
inc += 0.04;
float angulo = sin(inc)/4.0 + sin(inc*1.2)/15.0;

hoja(0, 30, angulo);
}


void hoja(int x, int units, float angulo) {
  
pushMatrix();
translate(width/2, height/2);
for (int i = units; i > 0; i--) {
  strokeWeight(i);
  line(0, 0, 0, -8);
  translate(0, -8);
  rotate(angulo);
}
popMatrix();
}