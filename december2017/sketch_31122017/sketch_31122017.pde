ArrayList<PVector> spots;
PImage img;
Particles[] particles = new Particles[1500];

void setup(){
  size(500,500);
  smooth();
  strokeWeight(1);
  spots = new ArrayList<PVector>();
  img = loadImage("365-01.jpg");
  img.loadPixels();
  for(int x = 0; x < img.width; x++){
    for(int y = 0; y < img.height; y++){
      int index = x + y * width;
      color c = img.pixels[index];
      float b = brightness(c);
      if(b < 10){
        spots.add(new PVector(x,y));
      }
    }
  }
  for(int i=0; i<=particles.length-1; i++){
    particles[i] = new Particles();
  }
}

void draw(){
  background(6,7,175);
  translate(-50,-70);
  scale(1.2);
  for(int i = 0; i<=particles.length-1; i++){
    float x1 = particles[i].pos.x;
    float y1 = particles[i].pos.y;
    particles[i].move();
    for(int j = 0; j<particles.length-1; j++){
        if(particles[j] != particles[i]){
          float x2 = particles[j].pos.x;
          float y2 = particles[j].pos.y;
          float d = dist(x1,y1,x2,y2);
          if(d<10){
            float alpha = map(d,0,10,10,100);
            stroke(255,alpha);
            line(x1, y1, x2, y2);
          }
        }
      }
  }
}