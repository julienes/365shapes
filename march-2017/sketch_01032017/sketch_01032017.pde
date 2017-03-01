ArrayList<PVector> spots;
Ball[] ball = new Ball[2000];
PImage img;
void setup(){
  size(500,500);
  smooth();
  spots = new ArrayList<PVector>();
  img = loadImage("60.jpg");
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
}

void draw(){
  background(5,15,230);
  for(int i = 0; i<=ball.length-1; i++){
    ball[i].behaviors();
    ball[i].update();
    ball[i].show();
  }
}