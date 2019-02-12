int c = color(0);//(178,159,11);
public void setup(){
  size(500,500);
}
public void draw(){
  background(240, 211, 211);
  stroke(c/220);
  fill(c);
  OriginalFractal(mouseX,mouseY,550);
}
public void mousePressed(){
  c = color((int)(Math.random()*150),(int)(Math.random()*150),(int)(Math.random()*25));
}

public void OriginalFractal(int x, int y, int rad){
  ellipse(x, y, rad, rad);
  if(rad > 50){
    OriginalFractal(x + rad/4, y, rad/2);
    OriginalFractal(x - rad/4, y, rad/2);
    OriginalFractal(x, y + rad/4, rad/2);
    OriginalFractal(x, y - rad/4, rad/2);
    
  }

}


