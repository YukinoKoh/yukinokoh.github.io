float startX, startY, margin, m, incline;
float x1, y1, pointX1, pointY1, x2, y2, pointX2, x3, y3, pointX3, x4, y4;
float multiple = 3;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);

void setup(){
  size (222, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  m = multiple;
  margin = 1*m;
  incline = 2.5*m;
  startX = m; 
  startY = m;
  x1 = startX;
  y1 = startY;
  pointX1 = 19*m;
  pointY1 = height -2*m;
  x2 = pointX1;
  y2 = pointY1;
  pointX2 = 37*m;
  x3 = pointX2;
  y3 = startX;
  pointX3 = 55*m;
  x4 = pointX3;
  y4 = pointY1;
}

void draw(){
  if (x1 <= pointX1){
    stroke (c1);
    line (startX, startY, x1, y1);
    if (x1 >= startX +m){
      stroke (c2);
      line (startX +2*m, startY, x1+ 1*m, y1-incline);
    }
    if (x1 >= startX +2*m){
      stroke (c3);
      line (startX +4*m, startY, x1+ 2*m, y1-2*incline);
    }
    if (x1 >= startX +3*m){
      stroke (c4);
      line (startX +6*m, startY, x1+ 3*m, y1-3*incline);
    }
    x1 +=m;
    y1 +=incline;
  }
  if (x1 >= pointX1 && x2 <= pointX2){
    stroke (c1);
    line (pointX1, pointY1, x2, y2);
    x2 +=m;
    y2 -=incline;
  }
  if (x2 >= pointX2 && x3 <= pointX3){
    stroke (c1);
    line (pointX2, startY, x3, y3);
    if (x3 >= pointX2 +m){
      stroke (c2);
      line (pointX2 -1*m, startY+1*incline, x3-2*m, y3);
    }
    if (x3 >= pointX2 +2*m){
      stroke (c3);
      line (pointX2 -2*m, startY+2*incline, x3 -4*m, y3);
    }
    if (x3 >= pointX2 +3*m){
      stroke (c4);
      line (pointX2 -3*m, startY+3*incline, x3 -6*m, y3);
    }
    x3 +=m;
    y3 +=incline;
  }
  if (x3 >= pointX3 && y4 >= startY){
    stroke (c1);
    line (pointX3, pointY1, x4, y4);
    x4 +=m;
    y4 -=incline;
  }
}
