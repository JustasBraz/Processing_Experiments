//int moves = 10;
int counter;
IntList inventory;
int i=0; 
int j=0;
int limit=20;
int listSIZE = 10000000;

void setup(){
  
  println(dist(10,10, 60,10));
  //fullScreen(P3D);
 size(900,900, P3D);
   inventory = new IntList();
   inventory.append(width/2);
   inventory.append(height/2);
   inventory.append(height/2);
   
  for(int x=0; x<listSIZE;x++){
    float x1= random(width);
    float y1= random(height);
    float z1= random(height);
 
     if( dist(inventory.get(j), inventory.get(j+1),inventory.get(j+2),x1,y1,z1)<limit
    
     )
     {
     inventory.append((int)x1);
     inventory.append((int)y1);
     inventory.append((int)z1);

     j=j+3;

          }
          else
          continue;
        }
      //background(255);
println("list size is " + inventory.size());

 println();
// for(i=0; i<inventory.size()-10;){ 
  

 }

void draw(){
    line(10,10, 60,10);
 stroke(random(255), random(255), random(255));
  
  translate(width/2, height/2);
  scale(width/2, height/2);
   
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
   
   
 

 }
 