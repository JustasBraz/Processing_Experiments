class Bullet extends PVector {
// have a velocity variable for the bullet's velocity
  PVector vel;
// constructor for Bullet with location and direction/velocity
  Bullet(PVector loc, PVector vel) {
// send the location to the PVector constructor (where it is stored in x, y variables)
    super(loc.x, loc.y);
// send the velocity to the instance variable PVector vel
    this.vel = vel.get(); // make a copy just to avoid any reference problems
  }

 
  void update() {
    add(vel);
  }
 
  void display1() {
    fill(0, 0, 255);
    ellipse(x, y, 3, 3);
  }
  
void pop(int i){
    fill(150, 0, 255);
    ellipse(x, y, 10, 10);
    bullets.remove(i);
    
}
}