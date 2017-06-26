PVector[] circle1;
PVector[] circle2;
int t = 100;
ArrayList<Form> form;

void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  form = new ArrayList<Form>();
  circle1 = new PVector[t];
  circle2 = new PVector[t];
  for(int i = 0; i<=circle1.length-1; i++){
    float n = map(i, 0, circle1.length, 0, TWO_PI);
    float x = 100 * cos(n);
    float y = 100 * sin(n);
    circle1[i] = new PVector(x,y);
  }
  for(int i = 0; i<=circle2.length-1; i++){
    float n = map(i, 0, circle2.length, 0, TWO_PI);
    float x = 50 * cos(n);
    float y = 50 * sin(n);
    circle2[i] = new PVector(x,y);
  }
  for(int i = 0; i<=t-1; i++){
    form.add(new Form(circle1[i], circle2[i], i));
  }
}


void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(Form f : form){
    f.display();
  }
}