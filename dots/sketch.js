function setup() {
  createCanvas(600,900);
}

function draw() {
  var r=random(width);
  var y=random(height);
  stroke(random(255), random(255), random(255));
  strokeWeight(random(10))
  point(r,y);
  //line(10,10,500,500)
}