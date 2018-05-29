void setup(){
  color c0 = color(25,255,255);
  color c1 = color(255, 15, 225);
  size(800, 450);
  noStroke();
  int numSteps =700;
  for(int i=0; i<numSteps;i++){
    float a= i/(numSteps-1.0);
    
    //RGB upper
    colorMode(RGB);
    fill(lerpColor(c0,c1,a));
    rect(50+i,50,1,150);
    
    //HSB lower
    colorMode(HSB);
    fill(lerpColor(c0,c1,a));
    rect(50+i,250,1,150);
    colorMode(RGB);
    
  }
}