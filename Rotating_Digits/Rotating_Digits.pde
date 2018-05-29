void setup(){

  size(1500,950,P2D);
  noStroke();
 smooth(8);

}

void draw(){
   
   background(255);

color c0 = color(25,255,255);
  color c1 = color(255, 15, 225);
   int numSteps =700;
  //for(int i=0; i<numSteps;i++){
  //  float a= i/(numSteps-1.0);
  //colorMode(RGB);
  ////fill(lerpColor(c0,c1,a));
  //  rect(50+i,50,1,150);
    
 
 //}
  
 float i=1;
for (int x=20;x<width-10; x+=40){
  if (i<numSteps){i=i+30;}
  for (int y=20;y<height-10;y+=40){
    
     float angle = atan2(mouseY-y, mouseX-x);
    // float angle = atan2(mouseX-x, mouseY-y);
    
    float a= i/(numSteps-1.0);
    println(a);
  fill(lerpColor(c0,c1,a));
 pushMatrix();
 translate(x,y);
 rotate(angle);
 

 float k =2;
 triangle(-5*k,-2*k,5*k,0,-5*k,2*k);
  
 //rect(-10,-4,10,10);
//pushMatrix();
//scale(0.5);
 rotate(-PI/2);
               //text(5,0,0);
//rotate(-PI/2);
  //popMatrix();
 popMatrix();
 
  }
}


}