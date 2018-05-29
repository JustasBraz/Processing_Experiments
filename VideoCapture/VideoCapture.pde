
import processing.video.*;

int frame=0;
PImage[] pictures= new PImage[153];
ArrayList<PImage> picArray = new ArrayList<PImage>();

  color trackColor1=color(255, 0, 0);
   color trackColor2=color(0, 0, 0);
 
  float threshold = 100;
  int step=0;
void setup() {
  colorMode(RGB);
  size(540, 304);
  //movieSetup();
  getImagesToArray();
 doTracking();
  println("entering draw");
  // createArrayOfArrays();
}

void draw() {
  if(step<pictures.length){

    image(pictures[step], 0, 0);
    step++;
}
else step=0;


  
}


void getImagesToArray() {
  for (int i=0; i<pictures.length; i++) {
    pictures[i]=loadImage("movie"+i+".png");
    println(i+" loaded");
  }
  
  
}

void doTracking(){
for (int i=0; i<pictures.length; i++) {
    picArray.add(tracking(pictures[i]));
   makeTransparent(tracking(pictures[i])).save("tracked"+i+".png");
  }
}

PImage makeTransparent(PImage img){
  PImage image = createImage( img.width, img.height, ARGB );
for( int x = 0; x < img.width; x++ ){
  for( int y = 0; y < img.height; y++ ){
    int i = ( ( y * img.width ) + x );
    if( img.pixels[i] == color( 0, 0, 0 ) ){
      image.pixels[i] = color( 0, 0, 0, 0 );
    } 
    else {
      image.pixels[i] = img.pixels[i];
    }
  }
}
return image;

}

PImage tracking(PImage myMovie) {


  float avgX = 0;
  float avgY = 0;

  int count = 0;

  //// Begin loop to walk through every pixel
  myMovie.loadPixels();
  for (int x = 0; x < myMovie.width; x++ ) {
    for (int y = 0; y < myMovie.height; y++ ) {
      int loc = x + y * myMovie.width;

      // What is current color
      color currentColor = myMovie.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      
      float r2 = red(trackColor2);
      float g2 = green(trackColor2);
      float b2 = blue(trackColor2);
      
      float r3 = red(trackColor1);
      float g3 = green(trackColor1);
      float b3 = blue(trackColor1);

      float d = distSq(r1, g1, b1, r2, g2, b2); 
      float d_ = distSq(r1, g1, b1, r3, g3, b3); 

      //points that are being tracked
      if ((d < threshold*threshold)||(d_ < threshold*threshold)) {
        myMovie.pixels[loc]=color(r1,g1,b1);
        avgX += x;
        avgY += y;
        count++;
      } else {
        myMovie.pixels[loc]=color(0,0,0);
        myMovie.updatePixels();
      }
    }
  }


  // We only consider the color found if its color distance is less than 10. 
  // This threshold of 10 is arbitrary and you can adjust this number depending on how accurate you require the tracking to be.
  if (count > 0) { 
    avgX = avgX / count;
    avgY = avgY / count;
  }
  
  
  
  myMovie.updatePixels();
  return myMovie;
  
  
}


float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}


//void playNrecMovie() {
//  image(myMovie, 0, 0);
//  saveFrame("movie"+frame+".png");
//  frame++;
//}

//void movieSetup() {
//  myMovie = new Movie(this, "BUS_TO_USE_NEW.mp4");
//  myMovie.play();
//}