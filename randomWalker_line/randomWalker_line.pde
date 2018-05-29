float x=height/2;
float y= width/2;
float angle =0.0;
float speed = 0.5;

void setup(){
  size(500,500);
  randomSeed(121);
  background(0);
  stroke(255,130);
  strokeWeight(2);

}

void draw(){
  angle+=random(-0.3,0.3);
  x+=cos(angle)*speed;
  y+=sin(angle)*speed;
  translate(x,y);
  rotate(angle);
  line(0,-10,0,10);
  //point(x,y);
}