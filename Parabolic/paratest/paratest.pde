float a=0;//9
float b=1;//200
float c=1;//300
float d=0;//8
void setup(){
  size(500,500);
  background(0);
  frameRate(37);
  //noLoop();
}
void draw(){
  //background(0);
  rect(0,0,500,500);
  fill(0,40);
   translate(250,250);
   scale(10);
  for (float t=0; t<20;t+=0.01){
    float x=cos(a*t)-cos(b*t);
    float y=cos(c*t)-cos(d*t);
    stroke(255);    
    strokeWeight(1);
    point(10*x,10*y);
    println(500*x+"  "+500*y);
  }
  a=a+0.01;
  d=d+0.01;
  b=b*1.001;
  c=c+0.02;
  }