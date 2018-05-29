
void setup(){
size(1500,1000);
noStroke();
}

void draw(){
  background(0);
for (int x=20;x<width-10; x+=20){
  for (int y=20;y<height-33;y+=20){
     float angle = atan2(mouseY-y, mouseX-x);
 pushMatrix();
 translate(x,y);
 rotate(angle);
 //triangle(-10,-4,10,0,-10,4);
 rect(-10,-4,2,15);
 popMatrix();
}}}
/*int x =50;
int y1=33;
int y2=66;
int y3=99;


 float angle = atan2(mouseY-y1, mouseX-x);
 pushMatrix();
 translate(x,y1);
 rotate(angle);
 triangle(-20,-8,20,0,-20,8);
 popMatrix();
 
 float angle2 = atan2(mouseY-y2, mouseX-x);
 pushMatrix();
 translate(x,y2);
 rotate(angle2);
 triangle(-20,-8,20,0,-20,8);
 popMatrix();
 
 float angle3 = atan2(mouseY-y3, mouseX-x);
 pushMatrix();
 translate(x,y3);
 rotate(angle3);
 triangle(-20,-8,20,0,-20,8);
 popMatrix();
}
 
 */