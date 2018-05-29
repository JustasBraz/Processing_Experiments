//import peasy.*;
//PeasyCam cam;
import processing.opengl.*;
ArrayList<PVector> points = new ArrayList<PVector>();
//Walker walker;
Walker[] walkers;
//Walker walker = new Walker(13);
//Walker walker1 = new Walker(31);
//Walker walker2 = new Walker(0);
//PVector points_ []=new PVector [50000];
//PVector lines_ []=new PVector [50000];


int k;
int start;
int kNext;


float distance = 500;
void setup (){
  size(500, 500, P3D);
  perspective(PI/3.0, width/height,1,100000);
 // cam = new PeasyCam(this, 500);
  //frameRate(5);
  int r=200;
  int index=0;
  for(float theta=0; theta<=TWO_PI;theta+=0.1){
     for(float fi=0; fi<=PI; fi+=0.1){
       
       float x= r*cos(theta)*sin(fi);
       float y= r*sin(theta)*sin(fi);
       float z= r*cos(fi);
      
  points.add(new PVector(x,y,z));
  
  k=0;
        }
       }
   
        walkers = new Walker[10];
        
        for(int i=0; i<walkers.length; i++){
        
        walkers[i] = new Walker((int)random(150));
        
        }
       
  int step=ceil(PI/0.1);
  //println(points.size());
  //start=(int)random(0,points.size());
  //start=13;
  //println(start);
   
   
  //println(lines);

}

void draw(){
  background(0);
  
 float x = cos(0.025*frameCount) * distance;
  float y = -distance/5;
  float z = sin(0.0205*frameCount) * distance;
  camera(x,y,z, 0,0,2, 0,0,1);
  for (PVector v:points){
  
  stroke(0);
  strokeWeight(2);
 //point(v.x,v.y,v.z);
  }
  
  
  for (Walker walker:walkers){
    walker.go();
    walker.visualise();
    walker.checkLen();
  }

  //walker.go();
  //  walker.visualise();
  //  walker.checkLen();
 
stroke(255,0,0);
  strokeWeight(5);
  point(points.get(start).x,points.get(start).y,points.get(start).z);
int b=0;//
//for(int b=1; b<32*63;b+=32){//31
  stroke(255,255,0);
point(points.get(start+b).x,points.get(start+b).y,points.get(start+b).z);
//}

saveFrame("Photos4/######.png"); 

}