int y=0;
void setup() {
  size(300, 300);
  colorMode(RGB);
}
void draw() {
  background(255, 255, 255);
  beginShape();
  for (int x=10; x<200; x+=10) {

    stroke(200, 70, 99, 90);
    strokeWeight(5);
    vertex(x, 0.8*x);
  }
  endShape();
  beginShape();
  for (int x=10; x<200; x+=10) {

    stroke(200, 70, 99, 40);
    strokeWeight(15);
    vertex(x, 0.8*x);
  }
  endShape();
  beginShape();
  for (int x=10; x<200; x+=10) {

    stroke(200, 70, 99, 20);
    strokeWeight(30);
    vertex(x, 0.8*x);
  }
  endShape();
}