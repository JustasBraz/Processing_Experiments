//Credits To Daniel Shiffman
//I have not written this code

void setup() {
  size(640, 500);
}
void draw() {
  background(255);
  drawCircle(width/2, height/2, 300);
}

void drawCircle(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if (radius>8) {
    drawCircle(x+radius/2, y, radius/2);
    drawCircle(x-radius/2, y, radius/2);
    drawCircle(x, y+radius/2, radius/2);
    drawCircle(x, y-radius/2, radius/2);
  }
}