int z=0;
float inc = 0.01;
float start = 0;
void setup() {
  size(800, 800);
  //background(255);
}

void draw() {

  //background(0,40,40);
  loadPixels();
  float xoff = start;

  for (int x=0; x<width; x++) {
    float yoff=0.0;

    for (int y=0; y<height; y++) {
      float bright=map(noise(xoff, yoff), 0, 1, 0, 255);
     
      pixels[x+y*width]=color(150, bright, 3000/bright);

      yoff+=map(noise(xoff, yoff), 0, 1, 0, 0.05);

      noiseDetail(1);
    }
    xoff+=random(0.0005);
  }
  updatePixels();
  start+=inc;

  textSize(50);
  stroke(255);
  fill(map(noise(xoff), 0, 1, 0, 255));
}