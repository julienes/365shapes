CircleSystem[] circleS = new CircleSystem[30];

void setup(){
   size(500,500);
   smooth();
   for(int i = 0; i<=circleS.length-1; i++){
     circleS[i] = new CircleSystem();
   }
}

void draw(){
  background(7,11,96);
  translate(width/2, height/2);
  for(int i = 0; i<=circleS.length-1; i++){
     circleS[i].display();
   }
}