ArrayList<Exagone> exa;
float s = 1;
float r;
float n1 = 40;
float n2 = 80;
boolean grow;
void setup(){
  size(500,500);
  strokeWeight(2);
  exa = new ArrayList<Exagone>();
}

void draw(){
  background(36,53,194);
  update();
  translate(width/2, height/2);
  for(int i = 0; i<exa.size(); i++){
    Exagone e = exa.get(i);
    e.display();
    if(e.isDead()){
      exa.remove(i);
    }
  }
  r+=0.001;
  exa.add(new Exagone(r,s, n1, n2));
}

void update(){
    if(grow){
      n1-=4;
      n2-=4;
      if(n1<=-40){
        grow = false;
      }
    }
    if(!grow){
      n1+=4;
      n2+=4;
      if(n1>=80){
        grow = true;
      }
    }
  }