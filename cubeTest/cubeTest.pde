import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam ;
void setup(){
size(500,500,P3D);
cam = new PeasyCam(this,height/2,width/2,0,1500);

}
void draw(){
  //background(51);
  int x=0;
  int y=0;
  int z=0;
  int w=200;
   if (keyPressed) {
     //walls0
    if (key == 'q' || key == 'Q') {
      line(x    , y    ,z, x + w, y,z);
       beginShape();
     // noStroke();
      fill(0,200,120,10);
      vertex(x,y,z);
      vertex(x,y,z+w);
      vertex(x+w,y,z+w);
      vertex(x+w,y,z);
      endShape();
    }
  
  if (key == 'w' || key == 'W') {
    
      line(x + w, y    ,z, x + w, y + w,z);
      beginShape();
     //noStroke();
      fill(0,200,120,10);
      vertex(x+w,y,z);
      vertex(x+w,y,z+w);
      vertex(x+w,y+w,z+w);
      vertex(x+w,y+w,z);
      endShape();
    }
    
    if (key == 'a' || key == 'A') {
      line(x + w, y + w,z, x    , y + w,z);
      beginShape();
      //noStroke();
      fill(0,200,120,10);
      vertex(x+w,y+w,z);
      vertex(x+w,y+w,z+w);
      vertex(x,y+w,z+w);
      vertex(x,y+w,z);
      endShape();
    }
    if (key == 's' || key == 'S') {
      line(x    , y + w,z, x    , y,z);
      beginShape();
     // noStroke();
      fill(0,200,120,10);
      vertex(x,y+w,z);
      vertex(x,y+w,z+w);
      vertex(x,y,z+w);
      vertex(x,y,z);
      endShape();
    }
    
    if (key == 'r' || key == 'R') {//upper
      //line(x    , y ,z, x    , y,z+w);
      beginShape();
      //noStroke();
      fill(0,200,120,10);
      vertex(x,y,z+w);
      vertex(x+w,y,z+w);
      vertex(x+w,y+w,z+w);
      vertex(x,y+w,z+w);
      endShape();
    }
    if (key == 't' || key == 'T') {
      //line(x    , y, z,  x    , y,z-w);
      beginShape();
     // noStroke();
      fill(0,200,120,10);
      vertex(x,y,z);
      vertex(x+w ,y,z);
      vertex(x+w,y+w,z);
      vertex(x,y+w,z);
      endShape();
    }
   }
}