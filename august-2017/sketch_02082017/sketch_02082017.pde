Sphera[] sphera = new Sphera[300];
float angle = 0;
float speed = 0.03;
void setup(){
  size(500,500, P3D);
  smooth();
  for(int i=0; i<=sphera.length-1; i++){
    sphera[i] = new Sphera();
  }
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  update();
  for(int i = 0; i<=sphera.length-1; i++){
    PVector v1 = sphera[i].position;
    sphera[i].update();
    sphera[i].display();
    for(int j = 0; j<=sphera.length-1; j++){
      PVector v2 = sphera[j].position;
      float d = v1.dist(v2);
      if(d<50 && v1 != v2){
        stroke(255,d);
        line(v1.x, v1.y, v1.z, v2.x, v2.y, v2.z);
      }
    }
  }
}

void update(){
  angle = angle + speed;
  rotateY(angle);
}