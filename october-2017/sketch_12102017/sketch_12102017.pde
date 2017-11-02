Boxes[] boxes = new Boxes[216];
ArrayList<PVector> base1;
ArrayList<PVector> base2;
int count = 0;
boolean open = false;

void setup(){
  size(500,500,P3D);
  smooth();
  stroke(6,7,175);
  base1 = new ArrayList<PVector>();
  base2 = new ArrayList<PVector>();
  for(int x = -50; x<=50; x+=20){
    for(int y = -50; y<=50; y+=20){
      for(int z = -50; z<=50; z+=20){
       base1.add(new PVector(x,y,z));
      }
    }
  }
  for(int x = -150; x<=150; x+=60){
    for(int y = -150; y<=150; y+=60){
      for(int z = -150; z<=150; z+=60){
       base2.add(new PVector(x,y,z));
      }
    }
  }
  
  for(int i = 0; i < boxes.length; i++){
    boxes[i] = new Boxes(i);
  }
}


void draw(){
  background(6,7,175);
  counter();
  translate(width/2, height/2);
  for(int i = 0; i < boxes.length; i++){
    boxes[i].update(open);
    boxes[i].display();
  }
}

void counter(){
  count++;
  if(!open){
    if(count >= 100){
      open = true;
      count = 0;
    }
  }if(open){
    if(count >= 100){
      open = false;
      count = 0;
    }
  }
}