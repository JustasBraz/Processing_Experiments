float x=450;
float y=450;
float x1=350;
float y1=350;
float x2=450;
float y2=450;
float x3=350;
float y3=350;
float step=5;
float count=0;
float count1=0;
float r=0;
float g=127;
float b=255;
float noice=0;
int limit=5000;
int array1[] = new int[limit];
int array2[] = new int[limit];
int index=0;

void setup() { 
  size(1000, 1000);
  //frameRate(10);
  strokeWeight(2);
  
  
} 

void draw() { 
  float c1=color(r,g,b);
  stroke(c1);
  
  //background(220);
  //float rand=random(1,9);
  float noice1=noise(noice);
  noice+=2;
  int rand=(int)map(noice1,0,1,0,8);
  int numb =(int)rand;
  
  array1[index]=numb;
  index++;
  
  //array1.pop();
  //print("count is "+count );
  //print(count);
  
  if (count<limit){
    count++;
    array2 = array1;
  //print(array1);
  }
  else {
    while(count1<=limit){
    
    float to_use=array1[array1.length-1];
      print("to use is "+to_use);
      
  if(to_use==1){
    line(x,y,x,y+step);
    y=y+step;   }
  if(to_use==2){
  line(x,y,x,y-step);
    y=y-step;}
  if(to_use==3){
  line(x,y,x+step,y);
    x=x+step;}
  if(to_use==4){
  line(x,y,x-step,y);
    x=x-step;}
  if(to_use==5){
  line(x,y,x+step,y+step);
    x=x+step;
    y=y+step;}
  if(to_use==6){
  line(x,y,x-step,y-step);
    x=x-step;
    y=y-step;}
  if(to_use==7){
  line(x,y,x+step,y-step);
    x=x+step;
    y=y-step;}
  if(to_use==8){
  line(x,y,x-step,y+step);
    x=x-step;
    y=y+step;}
      
   float to_use2=-1*array1[array1.length-1];
      print("to use2 is "+to_use2);
  //1    
  if(to_use2==-3){
    stroke(0);
    line(x1,y1,x1,y1+step);
    y1=y1+step;
             }
  //2    
  if(to_use2==-4){
    stroke(0);
  line(x1,y1,x1,y1-step);
    y1=y1-step;}
  //3    
  if(to_use2==-2){
    stroke(0);
  line(x1,y1,x1+step,y1);
    x1=x1+step;}
  //4    
  if(to_use2==-1){
    stroke(0);
  line(x1,y1,x1-step,y1);
    x1=x1-step;}
  //5    
  if(to_use2==-6){
    stroke(0);
  line(x1,y1,x1+step,y1+step);
    x1=x1+step;
    y1=y1+step;}
  //6    
  if(to_use2==-5){
  line(x1,y1,x1-step,y1-step);
    x1=x1-step;
    y1=y1-step;}
  //7    
  if(to_use2==-8){
    stroke(0);
  line(x1,y1,x1+step,y1-step);
    x1=x1+step;
    y1=y1-step;}
  //8    
  if(to_use2==-7){
    stroke(0);
  line(x1,y1,x1-step,y1+step);
    x1=x1-step;
    y1=y1+step;}
  
  
    array1[array1.length-1]=0;
    count1++;  
    //print(array2);
    }
   // to_use=9;
    numb=9;
        //print("popping"+array1+"length is "+array1.length);   
  }
  
  if(numb==9){
    pushMatrix();
  rotate(PI/2);
    popMatrix();
  }
  //print(array);
  
  if((x>400)||(x<0)){
  
  x=200;
    r+=50;
    b-=15;
    g+=random(-20,20);
  y=200;
  }
  if((y>400)||(y<0)){
  r+=50;
    b-=15;
    g+=random(-20,20);
  y=200;
  }
  if(numb==1){
    line(x2,y2,x2,y2+step);
    y2=y2+step;
             }
  if(numb==2){
  line(x2,y2,x2,y2-step);
    y2=y2-step;}
  if(numb==3){
  line(x2,y2,x2+step,y2);
    x2=x2+step;}
  if(numb==4){
  line(x2,y2,x2-step,y2);
    x2=x2-step;}
  if(numb==5){
  line(x2,y2,x2+step,y2+step);
    x2=x2+step;
    y2=y2+step;}
  if(numb==6){
  line(x2,y2,x2-step,y2-step);
    x2=x2-step;
    y2=y2-step;}
  if(numb==7){
  line(x2,y2,x2+step,y2-step);
    x2=x2+step;
    y2=y2-step;}
  if(numb==8){
  line(x2,y2,x2-step,y2+step);
    x2=x2-step;
    y2=y2+step;}
  
    if(-1*numb==-1){
  stroke(255,0,120);
    line(x3,y3,x3,y3+step);
    y3=y3+step;
             }
  if(-1*numb==-2){
  stroke(255,0,120);
  line(x3,y3,x3,y3-step);
    y3=y3-step;}
  if(-1*numb==-3){
  stroke(255,0,120);
  line(x3,y3,x3+step,y3);
    x3=x3+step;}
  if(-1*numb==-4){
    stroke(255,0,120);
  line(x3,y3,x3-step,y3);
    x3=x3-step;}
  if(-1*numb==-5){
    stroke(255,0,120);
  line(x3,y3,x3+step,y3+step);
    x3=x3+step;
    y3=y3+step;}
  if(-1*numb==-6){
     stroke(255,0,120);
  line(x3,y3,x3-step,y3-step);
    x3=x3-step;
    y3=y3-step;}
  if(-1*numb==-7){
    stroke(255,0,120);
  line(x3,y3,x3+step,y3-step);
    x3=x3+step;
    y3=y3-step;}
  if(-1*numb==-8){
    stroke(255,0,120);
  line(x3,y3,x3-step,y3+step);
    x3=x3-step;
    y3=y3+step;}
  
}