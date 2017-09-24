ArrayList<Blob> blob;
float x, y, angle;

void setup(){
  size(500,500);
  smooth();
  strokeWeight(2);
  noFill();
  blob = new ArrayList<Blob>();
}

void draw(){
  background(6,7,175);
  update();
  blob.add(new Blob(x,y, 100));
  translate(width/2, height/2);
  for(int i = 0; i<= blob.size()-1; i++){
    Blob b = blob.get(i);
    b.show();
    if(b.isDead()){
      blob.remove(i);
    }
  }
}

void update(){
  angle+=0.1;
  x = 50 * cos(angle);
  y = 50 * sin(angle);
}