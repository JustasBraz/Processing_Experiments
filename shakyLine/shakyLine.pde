void setup(){
size(500,500);
}
void draw(){
background(255);
stroke(0);
noFill();
  //for(int i = -100; i < 110; i += 10){
    int i=10;
    int j =200;
      //  pushMatrix();
        beginShape(LINES);
        stroke(i * 2, 100, 100);
        //line
       // translate(256, 256);;
     
        vertex(i, i);
        for()
        
        vertex(j, j);
        endShape();
      //  popMatrix();
  //  }
  
//shakyLine(10,10,300,421);
//line(10,10,300,421);
}

//void shakyLine(int initX, int initY, int posX, int posY){
////beginShape();
// //vertex(initX, initY);
// point(initX,initY);
//for(int x=initX; x<posX;x++){
//  for(int y=initY; y<posY;y+=2){
//    stroke(0);
//    strokeWeight(1);
//    noFill();
//    point(x,y);
//    // vertex(x,y);
//  }
//}

//endShape();
//}