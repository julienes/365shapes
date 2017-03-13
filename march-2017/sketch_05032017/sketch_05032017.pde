Blob[] blobs = new Blob[5];

void setup(){
  size(500,500);
  for(int i = 0; i<blobs.length; i++){
  blobs[i] = new Blob(width/2,height/2);
  }
}

void draw(){
 loadPixels();
 for(int x = 0; x<width; x++){
   for(int y = 0; y<height; y++){
     int index = x+y*width;
     float sum =120;
     for(Blob b : blobs){
     float d = dist(x, y , b.pos.x, b.pos.y);
     sum -= 60 * b.r / d;
     }
     pixels[index] = color(5-sum, 15-sum, 230-sum);
   }
 }
 updatePixels();
 for(Blob b : blobs){
   b.update();
   //b.show();
 }
}