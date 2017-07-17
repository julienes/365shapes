lemnGroupe[] lg = new lemnGroupe[20];

void setup(){
  size(500,500);
  smooth();
  strokeWeight(3);
  for(int i = 0; i<=lg.length-1; i++){
    float n = map(i, 0, lg.length-1, 50, 180);
    float count = map(i, 0, lg.length-1, 0, 200);
    lg[i] = new lemnGroupe(n, count);
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = 0; i<=lg.length-1; i++){
    lg[i].starte();
    lg[i].display();
  }
}