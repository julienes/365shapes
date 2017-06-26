ArrayList<Form> form;
float x,y,t,z;

void setup(){
  size(500,500, P3D);
  smooth();
  form = new ArrayList<Form>();
}

void draw(){
  background(6,7,175);
  translate(width/2, height/2);
  t+=0.01;
  x = (3*sin(t)+2*sin(3*t))*50;
  y = (cos(t)-2*cos(3*t))*50;
  z = 0.2*(cos(t)+2*sin(4*t));
  for(int i = form.size()-1; i>0; i--){
    Form f = form.get(i);
    f.display();
    if(f.isDead()){
      form.remove(i);
    }
  }
  form.add(new Form(x,y,z));
}