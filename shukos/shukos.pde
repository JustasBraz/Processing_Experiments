
void setup(){
size(500,500);
background(204);
}

void draw(){
noStroke();
fill(0);
translate((width/2)-40, (height/2)-10);
scale(2.0);
beginShape();
vertex(40,10);
for (int i=20; i<=100; i+=5){
  vertex(20,i);
  vertex(30,i);
}
vertex(40,10);
endShape();
}