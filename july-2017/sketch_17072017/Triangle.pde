class Triangle{
  float maxAngle;
  float r;
  float speed;
  float count = 0;
  float count2 = 0;
  int num;
  boolean back = false;
   Triangle(float _maxAngle, float _speed, int _num){
     maxAngle = _maxAngle;
     speed = _speed;
     num = _num;
   }
   
   void update(){
     if(!back){
       if(count<=100){
         count++;
       }else{
         r = r + speed;
         if(r>=maxAngle){
           r = maxAngle;
           count2++;
           if(count2>=100){
             back = true;          
           }
         }
       }
     }
     if(back){
       r-=speed;
       if(r<=0){
         back = false;
         count = 0;
         count2 = 0;
         r = 0;
       }
     }
   }
   
   void display(){
     pushMatrix();
     rotate(r);
     beginShape();
     vertex(0, -65);
     vertex(50,50);
     vertex(50,50);
     vertex(-50, 50);
     vertex(-50, 50);
     vertex(0,-65);
     endShape();
     popMatrix();
   }
}