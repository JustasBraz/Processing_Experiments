ArrayList <Bullet> bullets = new ArrayList <Bullet> ();
ArrayList <Baddie> baddies = new ArrayList <Baddie> ();
PVector player, playerSpeed;
float maxSpeed = 3;
int loc1,loc2;
Player p;
Baddie bad;
int numbad=600;
int score=0;


void setup() {
  size(800, 600,JAVA2D);
  player = new PVector(width/2, height/2);
  playerSpeed = new PVector();
  noCursor();
  noStroke();
  smooth(4);
  //frameRate(FPS);
  
  for(int i=0; i<numbad;i++){
   // PVector dir1 = PVector.sub(player, bad);
     bad = new Baddie();//dir1
      baddies.add(bad);
  //     rect(bad.loc1,bad.loc2,30,30);
   }
   colorMode(RGB);
    
 p = new Player(width>>1, height>>1, 1, 1);
 //println(baddies.size());

}
 
void draw() {
  println(frameRate);
  //background(0);
  // int numX = (width/10)+1;
  //int numY = (height/10)+1;
 
  //float [] xPoints = new float [numX];
  //float [] yPoints = new float [numY];
 
  //  for(int i = 0 ; i < numX ; i++){
  //    for(int j = 0 ; j < numY ; j++){
  //      xPoints[i] = i*(width/(numX-1)); 
  //      yPoints[j] = j*(height/(numY-1));
 
  //      float mx = mouseX;
  //      float my = mouseY;
 
  //      float distance = dist(xPoints[i] , yPoints[j] , mx , my);
  //      float factor = map(distance , 0 , 1000 , 0.1 , 1);
 
  //      pushMatrix();
  //      rectMode(CENTER);
  //      translate(xPoints[i],yPoints[j]);
  //      scale(factor);
  //      rect(xPoints[i],yPoints[j],20,20);
  //      popMatrix();
 
  //    }
  //  }
  
  //println(baddies.size(),bullets.size());
  
    //background(frameCount/3,frameCount/7,frameCount/5);
  if(frameCount%2==0){
  fill(frameCount/3,frameCount/7,frameCount/5,50);
  rect(0,0,800,600);}
  
  
  
  
  
  
  fill(0);
  pushMatrix();
  translate((width/2), height/2);
  textSize(250);
  fill(255,1);
  text(score,-150,0);
  fill(0,1);
  text(score,-300,150);
  popMatrix();
 noStroke();

 
  
   for(int j=0; j<baddies.size()-1; j++){
    for(int i=0; i<bullets.size(); i++){
      if (dist(bullets.get(i).x,bullets.get(i).y,baddies.get(j).loc1,baddies.get(j).loc2)<30){
         //println(dist(bullets.get(i).x,bullets.get(i).y,baddies.get(j).loc1,baddies.get(j).loc2));
          bullets.get(i).pop(i);
          baddies.get(j).collision(j);
          score++;
    }
  }
 
  }
  
    for(int i=0; i<bullets.size(); i++){
  if (((bullets.get(i).x>width)||bullets.get(i).x<0)||((bullets.get(i).x>width)||bullets.get(i).x<0)){
   // println(bullets.size());
   bullets.get(i).pop(i);
    }}
    
 
  player.add(playerSpeed);
  
 
  PVector mouse = new PVector(mouseX, mouseY);
  fill(0);
  ellipse(mouse.x, mouse.y, 2, 2);
 // every 5th frame AND when the mouse is pressed
  if (frameCount%5==0 && mousePressed) {
// get the direction from the player to the mouse
    PVector dir = PVector.sub(mouse, player);
// normalize it to length 1 (make it as unit vector)
    dir.normalize();
// multiply it by maxSpeed times three (giving the direction a fixed velocity)
    dir.mult(maxSpeed*3);
// create a new bullet at the position of the player in the direction of the mouse
    Bullet b = new Bullet(player, dir);
// add the new bullet to the list
    bullets.add(b);
  }
 for (Baddie bad : baddies) {
 bad.display();
 }
   // PVector bad1 = PVector.sub(loc1,loc2)
    
  
   // dir1.normalize();

    //dir1.mult(maxSpeed/3);

  
  
 
    
 for (Bullet b : bullets) {
   
// run the bullet's update() method
   //if (bullets.get(i).x>600){
   // bullets.get(i).pop(i);
   // }
    
    //bullets.get(i).update();
    
    //b.pop(lastIndexOf(b));
     b.update();
     b.display1();
// run the bullet's display() method
   // bullets.get(i).display1();
  }

    
  p.move();
 p.display();
 
  
  
}

// class Bullet which extends PVector (note PVector differences between 1.5.1 and 2.0xx)

 
void keyPressed() {
//  p.setMove(keyCode, true);
  if (keyCode == UP)    { playerSpeed.y = -maxSpeed; }
  if (keyCode == DOWN)  { playerSpeed.y = maxSpeed;  }
  if (keyCode == LEFT)  { playerSpeed.x = -maxSpeed; }
  if (keyCode == RIGHT) { playerSpeed.x = maxSpeed;  }
  
}
 
void keyReleased() {
  if (keyCode == UP || keyCode == DOWN)    { playerSpeed.y = 0; }
  if (keyCode == LEFT || keyCode == RIGHT) { playerSpeed.x = 0; }
 // p.setMove(keyCode, true);
}
 