class Eye{
    float x,y,z;
    float rotation = 0;
    float speed = 0.02;
    boolean toLeft = false;
   Eye(float _x, float _y, float _z){
     x = _x;
     y = _y;
     z = _z;
   }
   void update(){
     if(!toLeft){
     rotation = rotation + speed;
       if(rotation>=PI){
         toLeft = true;
       }
     }
     if(toLeft){
     rotation = rotation - speed;
       if(rotation<=0){
         toLeft = false;
       }
     }
   }
   
   void display(){
    pushMatrix();
    translate(x, y, z);
    rotateY(rotation);
    rotateX(rotation);
    shape(globe);
    popMatrix();
   }
}