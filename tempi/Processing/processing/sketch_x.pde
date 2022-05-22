float startX, startY, x1, y1, endX, endY, x2, y2;
float m, margin, incline1, incline2;
float multiple = 3;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);

void setup(){
  size (144, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  m = multiple;
  margin = 1*m;
  startX = 3*m;
  startY = margin;
  x1 = startX;
  y1 = startY;
  endX = 46*m;
  endY = height-margin;
  x2 = endX-4*m;
  y2 = startY;
  incline1 = 1.243*m;
  incline2 = 1.17*m;
}

void draw(){
  if (y1 <= endY){
    stroke(c1);
    line (startX, startY, x1, y1);
    stroke(c2);
    line (startX+2*m, startY, x1+2*m, y1);
    stroke(c3);
    line (startX+4*m, startY, x1+4*m, y1);
    stroke (c4);
    line (startX+6*m, startY, x1+6*m, y1);
    x1 += 1*m;
    y1 +=incline1;
  }
  if (y1 >= endY && y2 <= endY){
    stroke(c1);
    line (endX-4*m, startY, x2, y2);
    x2 -=1*m;
    y2 +=incline2;
  }
}
  
