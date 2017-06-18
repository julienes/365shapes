ArrayList<Sphere>sphere;
float t1 = 0;
float t2 = 0;
float t = 0;
void setup(){
  size(500,500,P3D);
  smooth();
  fill(255);
  noStroke();
  sphere = new ArrayList<Sphere>();
  float t1 = 0.001;
  for(int x = 0; x<=200; x+=15){
    float t2 = 0.001;
    for(int y = 0; y<=200; y+=15){
      float n = noise(t1,t2);
      float m = map(n,0,1,-50,50);
      sphere.add(new Sphere(x,y,m));
      t2+=0.002;
    }
    t1+=0.002;
  }
}


void draw(){
  translate(width/2-100, height/2-100,-100);
  rotateX(PI/3);
  background(6,7,175);
  lights();
  for(Sphere s : sphere){
    s.display();
  }
}