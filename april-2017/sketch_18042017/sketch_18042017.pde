ArrayList<Cube>cubes;
float d;
float d2 = 10;
float d3 = 20;
float d4 = 30;
void setup(){
  size(500,500,P3D);
  smooth();
  noStroke();
  fill(255);
  cubes = new ArrayList<Cube>();
  for(int x = 0; x<=200; x+=20){
    d++;
    cubes.add(new Cube(x,0,d));
    d2++;
    cubes.add(new Cube(200,x,d2));
  }
  for(int x = 200; x>=0; x-=20){
    d3++;
    cubes.add(new Cube(x,200,d3));
    d4++;
    cubes.add(new Cube(0,x,d4));
  }

}

void draw(){
  lights();
  background(35,53,193);
  translate(width/2-100, height/2-50);
  rotateX(PI/4);
  for(int i = 0; i<cubes.size(); i++){
    Cube c = cubes.get(i);
    c.display();
  }
}