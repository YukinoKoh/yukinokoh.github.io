float startX, startY, y1, centX, centY, diameterX, diameterY, x3, y3;
float ang2, startRad, rad2, margin, m;
float startAng = 180;
float endAng = 0;
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
  startX = 8*m;
  startY = margin;
  y1 = startY;
  diameterX = 32*m;
  diameterY = 23*m;
  centX = width/2;
  centY = height - diameterY/2 - margin;
  x3 = startX + diameterX;
  y3 = centY;
  startRad = radians(startAng);
  ang2 = startAng;
}

void draw(){
  if (y1 <= centY){
    stroke(c1);
    line(startX, startY, startX, y1);
    stroke(c2);
    line(startX+2*m, startY, startX+2*m, y1);
    stroke(c3);
    line(startX+4*m, startY, startX+4*m, y1);
    stroke(c4);
    line(startX+6*m, startY, startX+6*m, y1);
    y1 +=m;
  }
  if (y1 >= centY && ang2 >= endAng){
    rad2 = radians(ang2);
    stroke(c1);
    arc (centX, centY, diameterX, diameterY, rad2, startRad);
    stroke(c2);
    arc (centX+1*m, centY, diameterX-1*m, diameterY-0.5*m, rad2, startRad);
    stroke(c3);
    arc (centX+2*m, centY, diameterX-2*m, diameterY-1*m, rad2, startRad);
    stroke(c4);
    arc (centX+3*m, centY, diameterX-3*m, diameterY-1.5*m, rad2, startRad);
    ang2 -=5;
  }
  if (ang2 <= endAng && y3 >= startY){
    stroke(c1);
    line (x3, centY, x3, y3);
    y3 -=m;
  }
}
    
