ArrayList <Star> star;

void setup(){
  size(500, 500);
  smooth();
  star = new ArrayList<Star>();
}

void draw(){
  background(6,7,175);
  noStroke();
   for(int i = star.size()-1; i >=0; i--){
     Star s = star.get(i); 
     s.move();
     s.display();
     if(s.isDead()){
       star.remove(i);
     }
  }
  println(star.size());
  star.add(new Star());
}