int R = 150;
float total = 15;
float angle = 0;
float speed = 0.03;
int count = 0;
void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  fill(255);
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  lights();
  update();
  for(float i = 0; i<=total; i+=1){
    float lat = map(i,0,total, 0 , PI);
    for(float j = 0; j<=total; j+=1){
        count++;
        float lon = map(j,0,total, 0 , TWO_PI);
        float x = R * cos(lat) * cos(lon);
        float y = R * sin(lat) * cos(lon);
        float z = R * sin(lon);
      if(count%2 == 0){
        pushMatrix();
        translate(x,y,z);
        sphere(10);
        popMatrix();
      }else{
        pushMatrix();
        translate(x,y,z);
        box(10);
        popMatrix();
      }
    }
  }
}

void update(){
   angle = angle + speed;
   rotateZ(angle);
}