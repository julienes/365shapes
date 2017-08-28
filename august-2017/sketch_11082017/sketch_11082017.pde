float inc = 0.0;
void setup() {
size(500, 500);
smooth();
background(6,7,175);
}


void draw() {
fill(6,7,175,5);
noStroke();
rect(0,0,width, height);
stroke(255);
inc += 0.03;
float angulo = sin(inc)/2.0 + sin(inc*1.1)/10.0;

hoja(0, 30, angulo);
}


void hoja(int x, int units, float angulo) {
  
pushMatrix();
translate(width/2, height/2+100);
for (int i = units; i > 0; i--) {
  strokeWeight(1);
  line(0, 0, 0, -8);
  translate(0, -8);
  rotate(angulo);
}
popMatrix();
}