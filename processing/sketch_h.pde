float startX, startY, startX2, horizontalY, y1, x2, y3, margin;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size(144, 144);
  background(bg);
  smooth();
  noFill();
  frameRate(12);
  strokeWeight(0.5);
  margin = 1*multiple;
  horizontalY = 20*multiple;
  startX = 14 *multiple;
  startX2 = 34 *multiple;
  startY = margin;
  y1 = startY;
  y3 = startY;
  x2 = startX;
}

void draw(){
  if (y1 <= height){
   stroke(c4);
   line (startX, startY, startX, y1);
   stroke(c3);
   line (startX - 2*multiple, startY, startX - 2*multiple, y1);
   stroke(c2);
   line (startX - 4*multiple, startY, startX - 4*multiple, y1);
   stroke(c1);
   line (startX - 6*multiple, startY, startX - 6*multiple, y1);
   y1 +=1*multiple;
  }
  if (y1 >= horizontalY && x2 <= startX2){
    stroke(c1);
    line (startX, horizontalY, x2, horizontalY);
    x2 +=1*multiple;
  }
  if (y1 >= horizontalY && y3 <= height){
   stroke(c4);
   line (startX2, startY, startX2, y3);
   stroke(c3);
   line (startX2 + 2*multiple, startY, startX2 + 2*multiple, y3);
   stroke(c2);
   line (startX2 + 4*multiple, startY, startX2 + 4*multiple, y3);
   stroke(c1);
   line (startX2 + 6*multiple, startY, startX2 + 6*multiple, y3);
   y3 +=1*multiple;
  }
}
 
