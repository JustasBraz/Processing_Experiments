import processing.pdf.*;
void setup(){
size(900,1200);
background(255);
noLoop();
 beginRecord(PDF, "backg.pdf"); 
}
void draw(){
  
  float q=20;
  float transp=500;
for (float i =10; i<width; i+=30){
    if(i>((width+300)/2)) { 
  q*=random(0.8,0.9);
}
  else{q*=random(1,1.1);}
  
  
   for (float z=10; z<height;z+=25){
    transp+=0.5;
    float k= noise(transp);
    float c =map(k,0,1,0,100);
    
     //strokeWeight(0.1);
     noStroke();
   // stroke(255);
    fill(255,c);
   ellipse(i,z,q,q);
   //noFill();
   //noStroke();
   // stroke(0);
    fill(76,134,193,c);
    ellipse(i,z,q/2,q/2);
    noStroke();
    
    //fill(255,transp);
   //rect(i-10,z-10,q,q);
   println(c);
   
     
}
}
 endRecord();
}