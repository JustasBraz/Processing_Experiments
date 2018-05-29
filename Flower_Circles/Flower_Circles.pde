float d = 22;
float speed = 1.0;
int direction =1;
int i=0;

void setup(){
  size(100, 100);
  noStroke();
  fill(255, 204);
}

void draw(){
  println((int)frameRate);
background(0);

   ellipse(0, 50, d, d);
   ellipse(100, 50, d, d);
   ellipse(50, 0, d, d);
   ellipse(50, 100, d, d);
   translate(width/2, height/2);
   ellipse(0,0, d, d);
   d+= speed*direction;
   if((d>width) || (d<width/10)){
     direction = -direction;
   }
   i++;
   //println(i);
}
