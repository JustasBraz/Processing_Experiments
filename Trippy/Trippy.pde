//The Following Code was not written by me
void setup() {
  size(800, 600);
  smooth();
  background(0);
}

void draw() {
  background(0);


  int numX = (width/10)+1;
  int numY = (height/10)+1;

  float [] xPoints = new float [numX];
  float [] yPoints = new float [numY];

  for (int i = 0; i < numX; i++) {
    for (int j = 0; j < numY; j++) {
      xPoints[i] = i*(width/(numX-1)); 
      yPoints[j] = j*(height/(numY-1));

      float mx = mouseX;
      float my = mouseY;

      float distance = dist(xPoints[i], yPoints[j], mx, my);
      float factor = map(distance, 0, 1000, 0.1, 1);

      pushMatrix();
      rectMode(CENTER);
      translate(xPoints[i], yPoints[j]);
      scale(factor);
      fill(255);
      rect(xPoints[i], yPoints[j], 20, 20);
      popMatrix();
    }
  }
}