ArrayList<Tunnel> tunnel;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  tunnel = new ArrayList<Tunnel>();
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotateY(QUARTER_PI);
  for(int i = 0; i < tunnel.size(); i++){
    Tunnel t = tunnel.get(i);
    t.display();
    if(t.isDead() == true){
      tunnel.remove(i);
    }
  }
  if(frameCount%40 == 0){
    tunnel.add(new Tunnel());
  }
}