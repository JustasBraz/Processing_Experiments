import processing.dxf.*;
import peasy.*;
int size=20;
int step=20;
int x,y,z=250;
PeasyCam cam;
boolean recordDXF;
void setup(){
size(1000,1000, P3D);

 cam = new PeasyCam(this, 500);
}
void draw(){
  if (recordDXF) {
    beginRaw(DXF, "output1_###.dxf");
  }
    lights();
  //directionalLight(51, 102, 126, -1, 0, 0);
//pointLight(51, 102, 126, 35, 40, 36);
 //spotLight(51, 102, 126, 80, 20, 40, -1, 0, 0, PI/2, 0);
  background(255);
  fill(50,100,23,100);
  noStroke();
    beginShape(); //third side


 
      for(float noice=0;noice<0.1;noice+=.01){
        float x=map(noise(noice),0,1,1,500);
        for (float noice1=450;noice1<450.1;noice1+=.01){
          float y=map(noise(noice1),0,1,1,500);
            for(float noice2=150;noice2<150.1;noice2+=.01){
              float z=map(noise(noice2),0,1,1,900);
                      fill(50,100,23,1000);
            vertex(x,y,z); 
            fill(150,10,89,10);
           vertex(z,y,x);
          // vertex(y,z,x);
            }}}
         
       
       endShape(CLOSE);
 if (recordDXF) {
    endRaw();
    recordDXF = false;
  }
}
void keyPressed() {
  
   if (key == 'd') {
     recordDXF = true;
        }
   
}