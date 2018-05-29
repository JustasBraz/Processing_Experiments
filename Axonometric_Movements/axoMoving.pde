
int step;

float r;
float g;
float b;
float noice;
int count1;
int array [];
  int yarra ;
  
//IntList array;

int index;
int number;
int x,y;
int transp;
int a;

void setup(){
  size(5000, 1500);
  //frameRate();
  reset();
} 
void reset(){
strokeWeight(0.01);
  array=new int [50000];
  array[0]=(int)random(1,9);
  
 //array = new IntList();
  background(255);
    x=width/20;
 y=height/2;
  strokeWeight(1);
 step=10;

r=122;
 g=122;
 b=122;
noice=random(0,1000);;
 count1=0;

 int yarra []=new int [21];
  
//IntList array;

 index=1;

 transp=200;
 a=6;
}


void draw() { 
 float increment=1995;
 if (increment>1){
   pushMatrix();
   translate(-width/2,-height/2);
   popMatrix();
 }
   
  color c1=color(r,g,b);
  stroke(c1);
 
  //background(220);
  float noice1=noise(noice);
  noice+=increment;
  int numb=(int)map(noice1,0,1,0,8);
  //int numb=(int)random(1,9);
  //print(numb+"["+index+"] ");
  if(index<array.length){
  if(numb!=array[index-1]){
    //print(numb+"("+index+") ");
    array[index]=numb;
    
  index++;
}
  }
 // println(index);
  
 
 
  
  if (count1!=array.length){
    count1++;}
  else{numb=9;
   
    //for (int i=0; i<array.length-1;i++) {
   //print(array[i]+"("+i+") ");}
   //println(array+"done");
   //String C= Float.toString(increment);
   saveFrame("####.png");
   println("finished.");
   exit();
   
   
  
}


 
  //print("\n"+c1);
  
  if((x>width)||(x<0)){
    transp-=20;
    step=(int)random(10,80);
   strokeWeight(random(0,1.5));

   g+=random(-a,a);r+=random(-a,a);b+=random(-a,a);
  
  x=width/20;
    x+=25;
    println((float)index/1000+"%");
  }
  if((y>height)||(y<0)){
    step=(int)random(10,80);
     strokeWeight(random(0,1.5));  g+=random(-a,a);r+=random(-a,a);b+=random(-a,a);    x=width/4;
    y=height/3;
     y+=2*50;
      println(index/1000+"%");
  }
 
  if(numb==1){
    numb=number;
    line(x,y,x,y+step);
    y=y+step;
   
                 }
  if(numb==2){
   
  //array[index]=numb;
  //index++;
  line(x,y,x,y-step);
    y=y-step;}
  if(numb==3){
   
  line(x,y,x+step,y);
    x=x+step;}
  if(numb==4){
   
  line(x,y,x-step,y);
    x=x-step;}
  if(numb==5){
   
  line(x,y,x+step,y+step);
    x=x+step;
    y=y+step;}
  if(numb==6){
   
  line(x,y,x-step,y-step);
    x=x-step;
    y=y-step;}
  if(numb==7){
    
  line(x,y,x+step,y-step);
    x=x+step;
    y=y-step;}
  if(numb==8){
   
  line(x,y,x-step,y+step);
    x=x-step;
    y=y+step;}
  
}