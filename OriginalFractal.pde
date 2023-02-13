public void setup()
{
  noLoop();
  size(1000,1000);
}
int a=1000;
public void draw()
{
  background(0,0,0);
  plateau(100,900,a);
}
public void mouseClicked(){
  if(a<=0){
    a=1000;
    redraw();
  } else{
    a-=10;
    redraw();
  }
}
public void plateau(int x, int y, int len) 
{
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  
  if(len<=20){
    ellipse(x+len,y,x+len/2,y-len);
    ellipse(x+len/2,y,x-len/2,y-len/2);

  } else{
    plateau(x,y,len/2);
    plateau(x+len/2,y,len/2);
    plateau(x+len/4,y-len/2,len/2);
    plateau(x-len/4,y+len/2,len/2);
  }
}
