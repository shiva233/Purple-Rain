class Drop{

   float x = random(width);
   float y = random(-500,-50);
   float z = random(0,20);
   float yspeed = map(z,0,20,1,20);
   float len = map(z,0,20,10,20);
   
   void fall(){
   
     y = y + yspeed;
     
     float grav = map(z,0,20,0.0,0.2);
     // yspeed = yspeed + grav
     
     if(y > height){
     
       y  = random(-500,-50);
       yspeed = map(z,0,20,4,20);
     }
   }
   
   void show(){
     float thickness = map(z,0,20,1,3);
     strokeWeight(thickness);
     stroke(138,43,226);
     line(x,y,x,y+len );
     
   }

}
