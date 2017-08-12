ArrayList<Boxes>boxes;
float rotation = 0;
float size = 15;
void setup(){
  size(500,500, P3D);
  smooth();
  boxes = new ArrayList<Boxes>();
  for(int x = -50; x<=50; x+=size){
    for(int y = -50; y<=50; y+=size){
      for(int z = -50; z<=50; z+=size){
        boxes.add(new Boxes(x,y,z));
      }
    }
  }
}


void draw(){
  background(6,7,175);
  rotation+=0.02;
  translate(width/2, height/2);
  rotateY(rotation);
  for(Boxes b : boxes){
    b.update(rotation);
    b.display();
  }
  if(rotation>HALF_PI){
    rotation = 0;
  }
}