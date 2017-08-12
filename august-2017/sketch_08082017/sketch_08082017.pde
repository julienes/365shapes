ArrayList<Sstars>st;
Star[] star = new Star[100];
int r;

void setup(){
  size(500,500);
  smooth();
  noStroke();
  st = new ArrayList<Sstars>();
  for(int j = star.length-1; j >= 0; j--){
    star[j] = new Star(random(width), random(height));
  }
}

void draw(){
  background(6,7,175, 50);
  createStars();
  for(int j = star.length-1; j >= 0; j--){
    star[j].display();
  }
  for(int i = st.size()-1; i>=0; i--){
    Sstars s = st.get(i);
    s.display();
    if(s.isDeadToo()){
      st.remove(i);
    }
  }
}


void createStars(){
  r = floor(random(0,40));
  if(r == 20){
    st.add(new Sstars());
  }
}