
import peasy.*;
//int moves = 10;
int counter;
//IntList inventory = new IntList();
ArrayList<PVector> inventory = new ArrayList<PVector>();

int i=0; 
int j=0;
int limit1=110;
int limit2=100;
int listSIZE = 1000;
int X=(int)random(255);
int Y=(int)random(255);

PeasyCam cam;

void setup(){
 

 size(700,700, P3D);
  int x,y,z;
  x=50;
  y=25;
  z=5;
   inventory.add(new PVector(x,y,z));
   
   
  for(int b=0; b<listSIZE;b++){
    float x1= random(-250,250);
    float y1= random(-250,250);
    float z1= random(-250,250);
      
     
     PVector temp = new PVector (x1,y1,z1);
     
     if( (temp.mag()<limit1) && (temp.mag()>limit2)
     //inventory.get(0).mag()
     )
     
     {
    inventory.add(new PVector(x1,y1,z1));

    
          }
          else
          continue;
        }
    
println("list size is " + inventory.size());



  cam = new PeasyCam(this, 500);
  println(inventory.get(0).mag());

 }

void draw(){
   background(0);
  // println("X"+mouseX+" Y"+mouseY);
    
   // line(10,10, 60,10);
 
 
  noFill();
 float hu = 0;
 float wei=2;
  beginShape();
  for (int L=0;L<inventory.size()-1;L++) {
    stroke(hu, X,Y);
    
  strokeWeight(wei);
    line(inventory.get(L).x,inventory.get(L).y,inventory.get(L).z,inventory.get(L+1).x,inventory.get(L+1).y,inventory.get(L+1).z);
     
      stroke(hu, Y,X);
    point(inventory.get(L).x,inventory.get(L).y,inventory.get(L).z);
    //strokeWeight(2);
    //PVector offset = PVector.random3D();
    //offset.mult(0.1);
    //v.add(offset);
    //wei-=0.02;
    //if (wei ==0) {
   //   wei = 11;    }
    
    
    hu += 1;
    if (hu > 255) {
      hu = 0;
    }
    

  }
  endShape();/*
  
 // rect(50,50,550,550);
 
  
//  translate(width/2, height/2);
  //scale(0.5);
   
  int a1 = inventory.get(i);
  int b1 = inventory.get(i+1);
  int c1 = inventory.get(i+2);

   strokeWeight(random(1,10));
   point (a1, b1, c1);
 // delay(200);
   int c2 = inventory.get(i+3);
  int d2 = inventory.get(i+4);
   int e2 = inventory.get(i+5);
   strokeWeight(random(1,10));
   point (c2, d2,e2);
  // delay(200);
stroke(random(255), random(255), random(255));
  strokeWeight(1);
   line(a1, b1, c1, c2, d2,e2); 
   if (i==inventory.size()-6){
   stop();
  // delay(15554);
 }
   i=i+3;
   
   
 */

 }
 