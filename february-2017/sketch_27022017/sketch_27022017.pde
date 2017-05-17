ArrayList<PVector> spots;
Ball[] ball = new Ball[800];
PImage img;
float rotation=0;
void setup(){
  size(500,500, P3D);
  smooth();
  spots = new ArrayList<PVector>();
  img = loadImage("B-01.jpg");
  img.loadPixels();
  for(int x = 0; x < img.width; x++){
    for(int y = 0; y < img.height; y++){
      int index = x + y * width;
      color c = img.pixels[index];
      float b = brightness(c);
      if(b > 10){
        spots.add(new PVector(x,y));
      }
    }
  }
  for(int i=0; i<=ball.length-1; i++){
    ball[i] = new Ball();
  }
  println(spots.size());
}

void draw(){
  background(6,7,175);
  lights();
  spotLight(51, 102, 126, 50, 50, 200,0, 0, -1, 0, 200);
  translate(240, 80, -150);
  rotateY(rotation);
  scale(0.8);
  for(int i = 0; i<=ball.length-1; i++){
    pushMatrix();
    ball[i].move();
    ball[i].display();
    popMatrix();
  }
   rotation+=0.04;
}

class Ball{
  int r = int(random(0,spots.size()));
  PVector spot = spots.get(r);
  float x = spot.x;
  float y = spot.y;
  float z = random(0,50);
  float angle = 0;
  float speed = random(0.5,1);
  
  Ball(){}
  
  
  void move(){
    x = x + sin(angle);
    y = y + cos(angle);
    angle = angle + speed;
  }
  
  void display(){
    noStroke();
    pushMatrix();
    translate(x,y,z);
    box(20);
    popMatrix();
  }
}