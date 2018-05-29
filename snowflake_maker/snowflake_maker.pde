import peasy.*;
//import processing.pdf.*;
PeasyCam cam;
PVector vect;
float noice=random(0,1000);
int limit=5050;
int[] numbers = new int[limit];
int var=1;
int step=2;


float step2=1000;
 //int vect.x,vect.y;
 
 IntList linez = new IntList();
 ArrayList<PVector> vectors = new ArrayList<PVector>();
 
void setup(){
 // size(3000,3000, PDF,"test2.pdf");
 size(800,800, P3D);
 cam = new PeasyCam(this, 700);
 
 stroke(0);
 strokeWeight(0.5);

 vect=new PVector(width/5, height/5,0);

  
 generate();
 
 for(int i=0; i<4;i++){
   prideti(numbers);
   rotation(numbers);
 }

println(vectors.size());
// data(linez);
remake(linez);
println(vectors.size());
for (int i = 0; i<25; i++){
    println("x is "+vectors.get(i).x);
    println("y is "+vectors.get(i).y);
    println("z is "+vectors.get(i).z);
 }
}
void draw(){
 background(255);
 //data(linez);
 //beginShape();
 //for(PVector v:vectors){
 // // strokeWeight(2);
 // //stroke(255,50,150);
 // vertex(v.x,v.y,v.z);
 //}
 //endShape();
 for(int i=0; i+1<vectors.size(); i++){
 line(vectors.get(i).x,vectors.get(i).y,vectors.get(i).z,
       vectors.get(i+1).x,vectors.get(i+1).y,vectors.get(i+1).z);
 }
 
 
 
 //data(linez);


 
//noLoop();
//exit();
}

void generate(){
for(int index=0;index<numbers.length;index++){
  
    if(index>((numbers.length/2)-1)){
       
        if (numbers[index-var]==1){
            numbers[index]=2;    
           }
        if (numbers[index-var]==2){
           numbers[index]=1; 
           }
        if (numbers[index-var]==3){
           numbers[index]=4;
        }
        if (numbers[index-var]==4){
           numbers[index]=3;        
        }
        if (numbers[index-var]==5){
           numbers[index]=6;
        }
        if (numbers[index-var]==6){
            numbers[index]=5;        
        }
        if (numbers[index-var]==7){
          numbers[index]=8;
        }
        if (numbers[index-var]==8){
          numbers[index]=7;
        }
        var+=2;;
     }
    

 else{
         //float noice1=noise(noice);
         //noice+=step2;
         // int rand=(int)map(noice1,0,1,1,9);
  int rand=(int)random(1,9);
  if ((index!=0)&&(rand==numbers[index-1])){
         // noice+=step2;
         //noice1=noise(noice);
         //rand=(int)map(noice1,0,1,1,9);
    rand=(int)random(1,9);
  }
  
  numbers[index]=rand;
    }
  }

}


void prideti(int[] numbers){
for(int n:numbers){
linez.append(n);
}

}

void rotation(int [] numbers){
  for(int index=0; index<numbers.length;index++){
  
        if (numbers[index]==1){
              numbers[index]=3;    
           }
        else if (numbers[index]==2){
           numbers[index]=4; 
           }
       else if (numbers[index]==3){
           numbers[index]=2;
        }
       else if (numbers[index]==4){
           numbers[index]=1;        
        }
       else if (numbers[index]==5){
           numbers[index]=7;
        }
       else if (numbers[index]==6){
            numbers[index]=5;        
        }
       else if (numbers[index]==7){
          numbers[index]=8;
        }
       else if (numbers[index]==8){
          numbers[index]=6;
        }
        
  }

}


void data(IntList linez){
    
      for(int n: linez){
      
                                                             //if(n>-1+linez.size()/2){// stroke(0,150,0); }
  //   vect.z+=0.01;
      if(n==1){
  line(vect.x,vect.y,vect.z,vect.x,vect.y-step,vect.z);
    vect.y=vect.y-step;
  
      }
  if(n==2){
  line(vect.x,vect.y,vect.z,vect.x,vect.y+step,vect.z);
    vect.y=vect.y+step;
    }
    
  if(n==3){
  line(vect.x,vect.y,vect.z,vect.x-step,vect.y,vect.z);
    vect.x=vect.x-step;}
    
  if(n==4){
  line(vect.x,vect.y,vect.z,vect.x+step,vect.y,vect.z);
    vect.x=vect.x+step;}
    
  if(n==5){
  line(vect.x,vect.y,vect.z,vect.x+step,vect.y-step,vect.z);
    vect.x=vect.x+step;
    vect.y=vect.y-step;}
  if(n==6){
  line(vect.x,vect.y,vect.z,vect.x+step,vect.y+step,vect.z);
    vect.x=vect.x+step;
    vect.y=vect.y+step;}
  if(n==7){
  line(vect.x,vect.y,vect.z,vect.x-step,vect.y-step,vect.z);
    vect.x=vect.x-step;
    vect.y=vect.y-step;}
  if(n==8){
  line(vect.x,vect.y,vect.z,vect.x-step,vect.y+step,vect.z);
    vect.x=vect.x-step;
    vect.y=vect.y+step;}
    }
}


 void remake(IntList linez){
     
     int x=width/5;
     int y= height/5;
     float z=1.001;
     
      for(int n: linez){
        
               //   z+=0.01;                                           //if(n>-1+linez.size()/2){// stroke(0,150,0); }
     //vect.z*=exp(1.1);
      if(n==1){
    //line(vect.x,vect.y,vect.z,vect.x,vect.y-step,vect.z);
    vectors.add(new PVector(x,y-step,z));
    y-=step;
   // vect.y=vect.y-step;
  
      }
  if(n==2){
     //line(vect.x,vect.y,vect.z,vect.x,vect.y+step,vect.z);
     vectors.add(new PVector(x,y+step,z));
     y+=step;
    //vect.y=vect.y+step;
    }
    
  if(n==3){
     // line(vect.x,vect.y,vect.z,vect.x-step,vect.y,vect.z);
     vectors.add(new PVector(x-step,y,z));
     x-=step;
    //vect.x=vect.x-step;
  }
    
  if(n==4){
        //line(vect.x,vect.y,vect.z,vect.x+step,vect.y,vect.z);
        vectors.add(new PVector(x+step,y,z));
        x+=step;
    //vect.x=vect.x+step;
  }
    
  if(n==5){
      //line(vect.x,vect.y,vect.z,vect.x+step,vect.y-step,vect.z);
      vectors.add(new PVector(x+step,y-step,z));
      x+=step;
      y-=step;
    //vect.x=vect.x+step;
    //vect.y=vect.y-step;
  }
  if(n==6){
      //line(vect.x,vect.y,vect.z,vect.x+step,vect.y+step,vect.z);
       vectors.add(new PVector(x+step,y+step,z));
       x+=step;
      y+=step;
    //vect.x=vect.x+step;
    //vect.y=vect.y+step;
  }
  if(n==7){
      //line(vect.x,vect.y,vect.z,vect.x-step,vect.y-step,vect.z);
       vectors.add(new PVector(x-step,y-step,z));
       x-=step;
      y-=step;
    //vect.x=vect.x-step;
    //vect.y=vect.y-step;
  }
  if(n==8){
        //line(vect.x,vect.y,vect.z,vect.x-step,vect.y+step,vect.z);
         vectors.add(new PVector(x-step,y+step,z));
         x-=step;
          y+=step;
    //vect.x=vect.x-step;
    //vect.y=vect.y+step;
  }
    }
 }



           
           //void lines(int [] numbers){
             
           //     for(int x=0; x<numbers.length;x++){
           //       stroke(0);
                  
           //       if(x>-1+numbers.length/2){
           //      // stroke(0,150,0);
           //     }
           //     if(numbers[x]==1){
           //   line(vect.x,vect.y,vect.z,vect.x,vect.y-step,vect.z);
           //   vect.y=vect.y-step;
             
           // }
           // if(numbers[x]==2){
           // line(vect.x,vect.y,vect.z,vect.x,vect.y+step,vect.z);
           //   vect.y=vect.y+step;}
              
           //   //3 and 4 are the same in terms of x value
           //   //no more
           // if(numbers[x]==3){
           // line(vect.x,vect.y,vect.z,vect.x-step,vect.y,vect.z);
           //   vect.x=vect.x-step;}
              
           // if(numbers[x]==4){
           // line(vect.x,vect.y,vect.z,vect.x+step,vect.y,vect.z);
           //   vect.x=vect.x+step;}
              
           // if(numbers[x]==5){
           // line(vect.x,vect.y,vect.z,vect.x+step,vect.y-step,vect.z);
           //   vect.x=vect.x+step;
           //   vect.y=vect.y-step;}
           // if(numbers[x]==6){
           // line(vect.x,vect.y,vect.z,vect.x+step,vect.y+step,vect.z);
           //   vect.x=vect.x+step;
           //   vect.y=vect.y+step;}
           // if(numbers[x]==7){
           // line(vect.x,vect.y,vect.z,vect.x-step,vect.y-step,vect.z);
           //   vect.x=vect.x-step;
           //   vect.y=vect.y-step;}
           // if(numbers[x]==8){
           // line(vect.x,vect.y,vect.z,vect.x-step,vect.y+step,vect.z);
           //   vect.x=vect.x-step;
           //   vect.y=vect.y+step;}
           //   }
          //