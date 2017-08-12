rectangle[] rec = new rectangle[10];

void setup(){
  size(500,500,P3D);
  smooth();
  rectMode(CENTER);
  stroke(6,7,175);
  for(int i = 0; i<=rec.length-1; i++){
    float angle = map(i,0,rec.length-1, 0, TWO_PI);
    float y = map(i,0,rec.length-1, 0, 400);
    rec[i] = new rectangle(y,angle);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2-200);
  for(int i = 0; i<=rec.length-1; i++){
    rec[i].display();
  }
}