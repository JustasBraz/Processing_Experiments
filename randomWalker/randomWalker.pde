float x=50.0;
float y= 80.0;

void setup(){
  size(100,100);
  randomSeed(0);
  background(0);
  stroke(255);
  strokeWeight(2);

}

void draw(){
  x+=random(-2,2);
  y+=random(-2,2);
  point(x,y);
}