Electric[] elec = new Electric[40];

void setup(){
  size(500,500);
  smooth();
  frameRate(5);
  strokeWeight(3);
  stroke(255);
  for(int i = 0; i<=elec.length-1; i++){
    float m = map(i, 0, elec.length, (height/2)-70, (height/2)+120);
    elec[i] = new Electric(m);
  }
  
}

void draw(){
  background(6,7,175);
  for(int i = 0; i<=elec.length-1; i++){
    elec[i].display();
  }
}