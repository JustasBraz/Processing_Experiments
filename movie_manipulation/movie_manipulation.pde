import processing.video.*;

Movie video;
void setup(){
 size(600,400);
 video= new Movie (this, "transit.mov");
 video.loop();
  
}

void movieEvent(Movie video){

video.read();
}
void mousePressed(){
video.jump(3);
}
void draw(){
float r=map(mouseX,0, width,0,4);


}