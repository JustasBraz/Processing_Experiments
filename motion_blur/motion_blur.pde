float y = 50;
float speed = 1.0;
int direction =1;
float radius = 15.0;

void setup(){
  size(100, 100);
  noStroke();
  ellipseMode(RADIUS);
}

void draw(){
  println((int)frameRate);
  fill(0,12);
  rect(0,0, width, height);
  fill(255);
   ellipse(33, y, radius, radius);
  
 
   y+= speed*direction;
   if((y>height-radius) || (y<radius)){
     direction = -direction;
   }
  
}