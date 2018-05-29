class Baddie extends PVector{
  PVector vel,pos, prev, acc;
 int loc1,loc2;
  Baddie() {//PVector vel
     loc1=(int)random(0,width-35);
     loc2=(int)random(0, height-35);
     if ((loc1>(width/2)-25)&&(loc1<(width/2)+25)&&(loc2>(height/2)-25)&&(loc2<(height/2)-25)){
      loc1=0;
      loc2=0;
     }
     
        pos = new PVector(loc1, loc2);
        prev = new PVector(loc1, loc2);
        acc =new PVector();
        vel = new PVector(); 
        
  //p5.Vector.random2D();
  //this.vel = p5.Vector.random2D();
  //this.vel.setMag(random(2, 5));

     this.vel = vel.get();
    
  }
    

 
  void display() {
 
    fill(0,10);
    rect(loc1,loc2, 30, 30);
    
   // stroke(255, 255);
    //strokeWeight(4);
    line(pos.x, pos.y, this.prev.x, this.prev.y);


    this.prev.x = this.pos.x;
    this.prev.y = this.pos.y;
  }

  void collision(int i){
    int z =(int)random(10,120);
    fill(frameCount/5,frameCount/3,frameCount/7);
    ellipse(loc1, loc2, z,z);
    baddies.remove(i);
    }
    
    
    void update() {
    add(vel);
    //
    vel.add(acc);
    vel.limit(5);
    pos.add(this.vel);
    acc.mult(0);
  
    }
    
    //void attracted(player){

  
    //float force = PVector.sub(player, this.pos);
    //float d = force.mag();
    //d = constrain(d, 1, 25);
    //var G = 50;
    //var strength = G / (d * d);
    //force.setMag(strength);
    //if (d < 20) {
    //  force.mult(-10);
    //}
    //this.acc.add(force);
  }
//