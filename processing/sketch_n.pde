float startX, startY, y1, x2, y2, endX, endY, y3, margin;
float multiple = 3;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float m;

void setup(){
  size (144, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  m = multiple;
  margin = 1*m;
  startX = 4*m;
  startY = margin;
  y1 = startY;
  x2 = startX;
  y2 = startY;
  endX = 40*m;
  endY = height-margin;
  y3 = endY;
}

void draw(){
  if (y1 <= height){
    stroke(c1);
    line (startX, startY, startX, y1);
    y1 +=1*m;
  }
  if (y1 >= startY && y2 <= height){
    stroke(c1);
    line (startX, startY, x2, y2);
    stroke(c2);
    line (startX+2*m, startY, x2+2*m, y2);
    stroke(c3);
    line (startX+4*m, startY, x2+4*m, y2);
    stroke(c4);
    line (startX+6*m, startY, x2+6*m, y2);
    x2 +=2*m;
    y2 +=2.5*m;
  }
  if (y2 >= endY && y3 >= startY){
        stroke(c1);
    line (endX, endY, endX, y3);
    y3 -=1*m;
  }
}
  
