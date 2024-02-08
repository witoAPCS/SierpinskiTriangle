  public void setup()
{
 size(1000,1000); 
}
public void draw()
{
  for(int balls = 0; balls < 100; balls++){
    for(int j = 0; j < 100; j++){
    noStroke();
    fill(balls+20,j+20,130);
    ellipse(balls * 10,j * 10,20,20);
    }
  }
  fill(255);
  sierpinski(0, 1000, 1000);
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) triangle(x,y,x+len, y, x+len/2, y-len);
  else{
   sierpinski(x,y,len/2);
   sierpinski(x+len/2,y,len/2);
   sierpinski(x+len/4, y-len/2, len/2);
  }
}
