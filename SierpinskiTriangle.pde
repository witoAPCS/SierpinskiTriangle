  public void setup()
{
 size(1000,1000); 
}
public void draw()
{
  for(int i = 0; i < 100; i++){
    for(int j = 0; j < 100; j++){
    noStroke();
    fill(i,j,10);
    ellipse(i * 10,j * 10,20,20);
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
