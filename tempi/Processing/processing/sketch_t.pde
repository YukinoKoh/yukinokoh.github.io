float startX, startY, x1, centX, y2, margin, m;
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
  m = multiple;
  margin = m;
  startX = margin;
  startY = margin;
  x1 = startX;
  centX = width/2;
  y2 = startY;
}

void draw(){
  if (x1 <= width){
    stroke (c1);
    line (startX, startY, x1, startY);
    x1 +=m;
  }
  if (x1 >= centX && y2 <= height){
    stroke (c1);
    line (centX-2*m, startY, centX -2*m, y2);
    stroke (c2);
    line (centX, startY, centX, y2);
    stroke (c3);
    line (centX+2*m, startY, centX +2*m, y2);
    stroke (c4);
    line (centX+4*m, startY, centX+4*m, y2);
    y2 +=m;
  }
}
    
