PVector location = new PVector(0,0,0);
PVector base = new PVector(0,0,0);
PVector acceleration;
Boolean inverse = false;
void setup(){
  size(500,500,P3D);
  smooth();
   background(7,11,96);
}

void draw(){
  stroke(7,11,96);
  acceleration = PVector.random3D();
  translate(width/2, height/2);
  if(inverse){
    base.sub(acceleration);
  }else{
    base.add(acceleration);
  }
  
  base.limit(5);
  location.add(base);
  location.limit(150);
  translate(location.x,location.y,location.z);
  ellipse(0, 0,10,10);
  if(location.z>=360){
    inverse = true;
  }if(location.z<=0){
    inverse = false;
  }
}