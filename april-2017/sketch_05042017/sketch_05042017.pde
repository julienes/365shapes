import peasy.*;
PeasyCam cam;
Sphere[] sphere = new Sphere[40];
float t = 5;
float s;
boolean grow = true;
void setup(){
  size(500,500, P3D);
  smooth();
  cam = new PeasyCam(this, 500);
  float r = 150;
  float total = 40;
  for(int i = 0; i<sphere.length; i++){
    float lon = map(i, 0, sphere.length, -PI, PI);
    if(i<40){
         s = i;
       }else{
        s = 20;
       }
    for(int j = 0; j< sphere.length; j++){
       float lat = map(j, 0, sphere.length, -HALF_PI, HALF_PI);
       float x = r * sin(lon) * cos(lat);
       float y = r * sin(lon) * sin(lat);
       float z = r * cos(lon);
       sphere[i] = new Sphere(x,y,z,s); 
     }
  }
}

void draw(){
  background(6,7,175);
  lights();
  for(int i = 0; i<sphere.length; i++){
    sphere[i].update();
    sphere[i].display();
  }
}