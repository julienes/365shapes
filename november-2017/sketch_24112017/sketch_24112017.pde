ArrayList<Cube>cube;
boolean inPosition = true;
int count = 0;
float angle = 0;
float speed;

void setup(){
  size(500,500, P3D);
  smooth();
  noFill();
  stroke(255);
  strokeWeight(0.3);
  cube = new ArrayList<Cube>();
  for(int x = -75; x < 75; x+= 20){
    for(int y = -75; y < 75; y+=20){
      for(int z = -75; z < 75; z+=20){
        cube.add(new Cube(x,y,z));
      }
    }
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  rotateX(angle);
  for(Cube c : cube){
    c.display();
    c.update(inPosition);
  }
  
  count++;

  if(count >= 150){
     if(inPosition){
       inPosition = false;
       count = 0;
     }else{
       inPosition = true;
       count = 0;
     }
  }
  
   speed = 0.02;
   angle+=speed;
}