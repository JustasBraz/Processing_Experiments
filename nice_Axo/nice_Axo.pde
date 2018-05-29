void setup(){
size(500,500);
noSmooth();
frameRate(1);

}
void draw(){
  int u =10;
  float threshold = 0.1;
  
  for(int y =0; y<height;y+=u){
  for(int x=0;x<width;x+=u){
    float r =random(1);
    if(r>threshold){
    line(x,y,x+u,y+u);}
    else{
      line(x,y+u, x+u,y);
  }
  }
}}