ArrayList<Cercle>cercle;

void setup(){
  size(500,500,P3D);
  smooth();
  fill(6,7,175);
  stroke(255);
  strokeWeight(4);
  cercle = new ArrayList<Cercle>();
  for(int i = 0; i<=30; i++){
    float angle = map(i, 0, 30, 0, TWO_PI);
    float x = 100 * cos(angle);
    float y = 100 * sin(angle);
    float count = i;
    cercle.add(new Cercle(x,y,0,count));
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = cercle.size()-1; i>=0; i--){
    Cercle c = cercle.get(i);
    c.count();
    c.display();
  }
}