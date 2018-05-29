import processing.video.*;
Capture video;


void setup(){
size(640,400);
video = new Capture(this, 640,480,30);//we need to have this

video.start();
}
void mousePressed(){
//video.read();
}

void captureEvent(Capture video){
video.read();
}

void draw(){

  background(0);
  //tint(255,mouseY,mouseX);
  image(video, 0,0);
  
}