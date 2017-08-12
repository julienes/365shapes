PImage img;
PShape globe;
int total = 5;
ArrayList<Eye> eye;
void setup(){
  size(500,500, P3D);
  smooth();
  noStroke();
  noFill();
  img = loadImage("eye.jpg");
  eye = new ArrayList<Eye>();
  for(int i = 0; i<=total; i++){
    float lat = map(i, 0, total, 0, PI);
    for(int j = 0; j<=total; j++){
      float lon = map(j, 0, total, 0, TWO_PI);
      float x = 120 * cos(lat) * sin(lon);
      float y = 120 * cos(lat) * cos(lon);
      float z = 120 * cos(lat);
      eye.add(new Eye(x,y,z));
    }
  }
  globe = createShape(SPHERE, 15);
  globe.setTexture(img);
}

void draw(){
  background(6,7,175);
  lights();
  translate(width/2, height/2);
  for(Eye e : eye){
    e.update();
    e.display();
  }
}