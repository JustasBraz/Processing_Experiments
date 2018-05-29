class Walker{
int start;

ArrayList<PVector> lines = new ArrayList<PVector>();
int R=0;//(int)random(150,255);

int G=(int)random(100,255);

int B=(int)random(100,255);

Walker(int startPos){

start=startPos;

}
int nextPos(int current){
 if(current> 1983){
 return -1952;
 }
  
 if((current%32==0)){
           return (1+32);//*(int)random(0,10)1,4
         }
  ////checks for the lowest tier circle
        else if((current%30==1)||(current%30==3)||
            (current%30==5)||(current%30==7)||
            (current%30==9)||(current%30==11)||
            (current%30==13)||(current%30==15)||
            (current%30==17)||(current%30==19)){
         
              return (31);//*(int)random(0,10)1,4
             
          
          }
          
         //checks for th top spot
         
         
         else if((current>34)&&(current%32!=0)){
              //println("basic");
             switch((int)random(0,8)){
             case 0:
               return -1;
             case 1:
               return 1;
             case 2:
                return 31;
             case 3:
                return 32;
             case 4:
               return 33;
             case 5:
               return -31;
             case 6:
               return -32;
             case 7:
               return -33;
             default:
             println("nothing");
             break;
             
             }
         }
         
         else{
           
          // return 0;
          //println("positive");
         switch((int)random(1,5)){
           
             case 1:
               return 1;
             case 2:
                return 31;
             case 3:
                return 32;
             case 4:
               return 33;
           
             default:
               return 0;
         }
         }
     
        
        return -1;
}
void go(){
  lines.add(new PVector(points.get(start).x,points.get(start).y,points.get(start).z));
// point(points.get(start).x,points.get(start).y,points.get(start).z);
 //println(start);
 kNext=nextPos(start);
 //int kNext=0;
 //println(kNext);
 //println(start);
 line(points.get(start).x,points.get(start).y,points.get(start).z,
    points.get(start+kNext).x,points.get(start+kNext).y,points.get(start+kNext).z);

start=start+kNext;

lines.add(new PVector(points.get(start).x,points.get(start).y,points.get(start).z));

}


void visualise(){
//TRIANGLE_FAN
beginShape();


for(int i=0; i+1<lines.size(); i++){
    stroke(R,G,B);
  strokeWeight(2);
line(lines.get(i).x,lines.get(i).y,lines.get(i).z,lines.get(i+1).x,lines.get(i+1).y,lines.get(i+1).z);
}
endShape(CLOSE); 
  
  beginShape();


for(int i=0; i+1<lines.size(); i++){
    stroke(R,G,B,50);
  strokeWeight(random(3,9));
line(lines.get(i).x,lines.get(i).y,lines.get(i).z,lines.get(i+1).x,lines.get(i+1).y,lines.get(i+1).z);
}
endShape(CLOSE); 
  
  
}


void checkLen(){

for(int i=0; i+1<lines.size(); i++){
  if(dist(lines.get(i).x,lines.get(i).y,lines.get(i).z,lines.get(i+1).x,lines.get(i+1).y,lines.get(i+1).z)>50){
    println("start and kNext was "+start+" "+kNext+" the dist was "+dist(lines.get(i).x,lines.get(i).y,lines.get(i).z,lines.get(i+1).x,lines.get(i+1).y,lines.get(i+1).z)+" and position is i: "+i+" with positions: "+lines.get(i).x
    +" "+lines.get(i).y+" "+lines.get(i).z+" "+lines.get(i+1).x+" "+lines.get(i+1).y+" "+lines.get(i+1).z);
    stroke(255,0,0);
  strokeWeight(2);

  line(lines.get(i).x,lines.get(i).y,lines.get(i).z,lines.get(i+1).x,lines.get(i+1).y,lines.get(i+1).z);
  
  }
  else{
  continue;
  }
  
}
}

}