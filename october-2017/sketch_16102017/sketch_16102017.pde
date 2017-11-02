int total = 20;
Blob[] blob = new Blob[total];

void setup(){
  size(500,500);
  smooth();
  for(int i = 0; i < total; i++){
    float alpha = map(i, 0, 10, 10, 120);
    blob[i] = new Blob(width/2, height/2, 120, alpha);
  }
  
}

void draw(){
  background(6,7,175);
  
  for(int i = 0; i < total; i++){
    blob[i].show();
  }
}