import peasy.*;
float x;
float y;
float z;
PeasyCam cam;

void setup(){
size(600,600,P3D);
background(0);
//cam = new PeasyCam(this, 1500);
}

void draw(){
  
  
 translate(height/2, width/2);
//scale(0.1);
 stroke(255);
 strokeWeight(2);
 beginShape();
 for(x=-200; x<200; x+=0.1){
   
   stroke(0);
   noFill();
 strokeWeight(2);
 y=0.01*x*x;
 z+=0.1;
 //point(x,y);
 vertex(x,y,z);

// println(x+"and"+y);
 }
  endShape();
 stroke(0);
 strokeWeight(2);
 // point(300,300);
}