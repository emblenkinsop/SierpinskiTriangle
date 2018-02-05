int count;

public void setup() {
  size(900,800);
  background(0);
  count = 0;
  fill(255,0,0);
}
public void draw() {
  if (count < 2187)
    sierpinski(0,800,900);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) {
  if (len <= 10) {
    fill(255,(int)((float)(900-y)/900*255),0);
    triangle(x, y, x+len, y, x+len/2, y-len*sin(PI/3));
    count++;
}
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, (int)(y-len/2*sin(PI/3)), len/2);
  }
}