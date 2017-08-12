int R = 150;
float angleCourbe = 0.1;
float k = tan(angleCourbe);
float total = 40;
float speed = 0.1;
float rotation = 0;
boolean acceleration = true;
float acc = 0.01;

void setup(){
  size(500,500, P3D);
  smooth();
}

void draw(){
  update();
  background(7,7,175);
  translate(width/2, height/2);
  rotateX(PI/2);
  rotateZ(rotation);
  sphera();
}

void update() {
  if(acceleration) {
    acc+=0.01;
    rotation = rotation + acc;
    if(acc >=2){
      acceleration = false;
    }
  }
  if(!acceleration) {
    acc-=0.01;
    rotation = rotation - acc;
    if(acc <= 0){
      acceleration = true;
    }
  }
}
  

void sphera(){
  for(int i =0; i<=1000; i++){
    float angle = map(i,0,1000, -40,40);
    float result = k*angle;
    float result2 = -(k*angle);
    float ch = (exp(result)+exp(result2))/2;
    float sh = (exp(result)-exp(result2))/2;
    float th = (sh/ch);
    float x = R*(cos(angle)/(ch));
    float y = R*(sin(angle)/(ch));
    float z = R*th;
    stroke(255);
    if(i % 2 == 1){
      strokeWeight(2);
    }else{
       strokeWeight(4);
    }
    point(x,y,z);
  }
}