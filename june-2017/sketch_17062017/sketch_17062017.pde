Forms[] forms = new Forms[20];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i<=forms.length-1; i++){
  float a = 100+i;
  forms[i] = new Forms(a);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=forms.length-1; i++){
  forms[i].display();
  }
}