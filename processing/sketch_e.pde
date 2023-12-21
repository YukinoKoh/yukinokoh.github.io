float startX, x2, x3, x4, endX; 
float startY, y1, y3, endY, margin;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size(132, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  margin = 1*multiple;
  startX = 9*multiple;
  startY = margin;
  endX = 35 * multiple;
  endY = height - margin;
  x2 = startX;
  x3 = startX;
  x4 = startX;
  y1 = startY;
  y3 = 20 *multiple;
}
void draw(){
  if (y1 <= endY+1*multiple){
   stroke(c1);
   line (startX, startY, startX, y1);
   stroke(c2);
   line (startX+ 2*multiple, startY, startX+ 2*multiple, y1);
   stroke(c3);
   line (startX+ 4*multiple, startY, startX+ 4*multiple, y1);
   stroke(c4);
   line (startX+ 6*multiple, startY, startX+ 6*multiple, y1);
   y1 +=1*multiple;
  }
 if (y1 > startY && x2 < endX){
   stroke(c1);
   line (startX, startY, x2, startY);
   x2 +=1*multiple;
 }
 if (y1 >= y3 && x3 < endX){
   stroke(c1);
   line (startX + 6*multiple, y3, x3, y3);
   x3 +=1*multiple;
 }
 if (y1 >= endY && x4 < endX){
   stroke(c1);
   line (startX , endY, x4, endY);
   x4 +=1*multiple;
 }
}
   
