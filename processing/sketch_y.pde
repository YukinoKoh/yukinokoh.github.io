float startX1, startY1, x1, y1, startX2, x2, y2, pointX, pointY, y3;
float incline, margin, m;
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
  startX1 = 11*m;
  startY1 = margin;
  x1 = startX1;
  y1 = startY1;
  startX2 = 36*m;
  x2 = startX2;
  y2 = startY1;
  pointX = width/2 +2*m;
  pointY = 20*m;
  y3 = pointY;
  incline = 1.25*m;
}

void draw(){
  if (y1 <= pointY){
    stroke(c4);
    line (startX1, startY1, x1, y1);
    stroke(c3);
    line (startX1-2*m, startY1, x1-2*m, y1);
    stroke(c2);
    line (startX1-4*m, startY1, x1-4*m, y1);
    stroke(c1);
    line (startX1-6*m, startY1, x1-6*m, y1);
    x1 +=m;
    y1 +=incline;
  }
  if (y2 <= pointY){
    stroke(c1);
    line (startX2, startY1, x2, y2);
    x2 -=m;
    y2 +=incline;
  }
  if (y1 >= pointY && y3 <= height){
    stroke(c4);
    line (pointX, pointY-6*m, pointX, y3-3*m);
    stroke(c3);
    line (pointX-2*m, pointY-4*m, pointX-2*m, y3-2*m);
    stroke(c2);
    line (pointX-4*m, pointY-2*m, pointX-4*m, y3-m);
    stroke(c1);
    line (pointX-6*m, pointY, pointX-6*m, y3);
    y3 +=m;
  }
}
    
    
