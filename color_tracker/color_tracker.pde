import processing.video.*;

// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/nCVZHROb_dE

import processing.video.*;
  
PrintWriter output;
Capture video;

Movie myMovie;

color trackColor; 
float threshold = 200;

void setup() {
  size(640, 360);
   output = createWriter("positions.txt"); 
  //String[] cameras = Capture.list();
  //  printArray(cameras);
  //video = new Capture(this, cameras[9]);
  //video.start();
  myMovie= new Movie (this,"BUS_TO_USE_NEW.mp4");
  myMovie.play();
  trackColor = color(0, 0, 0);
  output.println("positions with colors"); // Write the coordinate to the file
}

//void captureEvent(Capture video) {
//  video.read();
//}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  myMovie.loadPixels();
  image(myMovie, 0, 0);

 // threshold = map(mouseX, 0, width, 0, 100);
 // threshold = 200;

  float avgX = 0;
  float avgY = 0;

  int count = 0;

  //// Begin loop to walk through every pixel
  for (int x = 0; x < myMovie.width; x++ ) {
    for (int y = 0; y < myMovie.height; y++ ) {
      int loc = x + y * myMovie.width;
      
      // What is current color
      color currentColor = myMovie.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      float d = distSq(r1, g1, b1, r2, g2, b2); 

//points that are being tracked
      if (d < threshold*threshold) {
        stroke(255);
        strokeWeight(1);
       // pixelStruct blob=new pixelStruct(new PVector(x,y), color(r2,g2,b2));
        output.println(x+" "+y+" "+color(r1,g1,b1));
        point(x, y);
        avgX += x;
        avgY += y;
        count++;
      }
    }
  }

  // We only consider the color found if its color distance is less than 10. 
  // This threshold of 10 is arbitrary and you can adjust this number depending on how accurate you require the tracking to be.
  if (count > 0) { 
    avgX = avgX / count;
    avgY = avgY / count;
    // Draw a circle at the tracked pixel
    //fill(255);
    //strokeWeight(4.0);
    //stroke(0);
    //ellipse(avgX, avgY, 24, 24);
  }
}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY*myMovie.width;
  trackColor = myMovie.pixels[loc];
}
void keyPressed() {
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}