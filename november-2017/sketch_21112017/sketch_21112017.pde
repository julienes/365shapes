int total = 100;
int R = 100;
float z = -200;
float edges;
boolean up = true;

void setup(){
  size(500,500, P3D);
  smooth();
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  rotate(QUARTER_PI);
  rotateY(PI/3 + (z/150));
  portal();
  particle();
}

void particle(){
  update();
  noStroke();
  fill(255);
  pushMatrix();
  translate(0,0,z);
  sphere(50);
  popMatrix();
}

void portal(){
  noFill();
  stroke(255);
  beginShape(QUAD);
  for(int i = 0; i <= edges; i++){
    float angle = map(i, 0, edges, 0, TWO_PI);
    float x = R * cos(angle);
    float y = R * sin(angle);
    vertex(x,y);
  }
  endShape();
}

void update(){
  if(up){
    z+=4;
    if(z >= 200){
      up = false;
    }
  }
  if(!up){
    z-=4;
    if(z <= -200){
      up = true;
    }
  }
  
  if(z<=0){
    edges = map(z,-200,0,6,4);
  }else{
    edges = map(z,0,200,4,100);
  }
}