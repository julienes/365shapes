ArrayList<Pyramide>pyramide;
int[] rotation = {0, 90,180,270,360};
void setup(){
  size(500,500);
  smooth();
  frameRate(3);
  stroke(255);
  noFill();
  pyramide = new ArrayList<Pyramide>();
}

void draw(){
  for(int x = -200; x<=200; x+=20){
     for(int y = -200; y<=200; y+=20){
       int r = floor(random(0,5));
       int t = floor(random(0,2));
       int angle = rotation[r];
       if(t == 1){
         pyramide.add(new Pyramide(x,y, angle));
       }
     }
  }
  
  background(6,7,175);
  translate(width/2, height/2);
  for(int i = pyramide.size()-1; i>=0; i--){
    Pyramide p = pyramide.get(i);
    p.display();
    pyramide.remove(i);
  }
}