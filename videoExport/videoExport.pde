
import processing.video.*;
Movie myMovie;

//ArrayList<PImage> picArray = new ArrayList<PImage>();
void setup(){
  size(720,300);
   myMovie = new Movie(this, "InceptionMP4.mp4");
   myMovie.frameRate(1);
   myMovie.play();
   println("duration "+myMovie.duration());
 
}
void draw(){
  //myMovie.read();
  image(myMovie, 0, 0);
  //saveFrame(frameCount+".png");
}

// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
  println(frameCount);
}