ArrayList<Sphera>sphera;
float R = 120;
int total = 80;
int[] spher1;
int[] spher2;
float rotation = 0;

void setup(){
  size(500,500, P3D);
  smooth();
  stroke(255);
  sphera = new ArrayList<Sphera>();
  spher1 = new int[total];
  spher2 = new int[total];
  
  for(float i = 0; i<= PI; i+=0.1){
    for(float j = 0; j<= TWO_PI; j+=0.1){
      float x = R * sin(i) * cos(j);
      float y = R * sin(i) * sin(j);
      float z = R * cos(i);
      sphera.add(new Sphera(x,y,z));
    }
  }
  for(int i = 0; i <= total-1; i++){
    int sphera1 = floor(random(0,sphera.size()));
    int sphera2 = floor(random(0,sphera.size()));
    spher1[i] = sphera1;
    spher2[i] = sphera2;
  }
}


void draw(){
  background(6,7,175);
  rotation+=0.07;
  translate(width/2, height/2);
  rotateY(rotation);
  rotateZ(rotation);
  for(Sphera s : sphera){
    s.display();
  }
  
  for(int i = 0; i <= spher1.length-1; i++){
    float startLineX = sphera.get(spher1[i]).x;
    float startLineY = sphera.get(spher1[i]).y;
    float startLineZ = sphera.get(spher1[i]).z;
    float startLineX2 = sphera.get(spher2[i]).x;
    float startLineY2 = sphera.get(spher2[i]).y;
    float startLineZ2 = sphera.get(spher2[i]).z;
    line(startLineX, startLineY, startLineZ, startLineX2, startLineY2, startLineZ2);
  }
  
}