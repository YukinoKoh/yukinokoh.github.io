float startX, x2, x3, centX;
float startY, y1, y3, centY;
float ang, margin;
float startAng = 270;
float radiusX, radiusY, startRad;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size(144, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(12);
  strokeWeight(0.5);
  ang = startAng;
  startRad = radians(startAng);
  margin = 1*multiple;
  startX = 3*multiple;
  startY = margin;
  centX = 18*multiple;
  centY = height/2;
  radiusX = width - centX - margin*3;
  radiusY = height/2 - margin;
  x2 = startX;
  x3 = centX;
  y3 = height - margin;
}

void draw(){
  if (y1 <= y3){
    stroke(c1);
    line (startX, startY, startX, y1);
    stroke(c2);
    line (startX + 1*multiple, startY, startX + 1*multiple, y1);
    stroke(c3);
    line (startX + 2*multiple, startY, startX + 2*multiple, y1);
    stroke(c4);
    line (startX + 3*multiple, startY, startX + 3*multiple, y1);
    y1 +=3*multiple;
  }
  if (y1 >startY && x2 <= centX){
    stroke(c1);
    line (startX, startY, x2, startY);
    x2 +=1*multiple;
  }
  if (x2 >= centX && ang <= 450){
    float rad = radians(ang);
    stroke(c1);
    arc (centX, centY, radiusX*2, radiusY*2, startRad, rad);
    stroke(c2);
    arc (centX, centY, radiusX*2 - 3*multiple, radiusY*2, startRad, rad);
    stroke(c3);
    arc (centX, centY, radiusX*2 - 6*multiple, radiusY*2, startRad, rad);
    stroke(c4);
    arc (centX, centY, radiusX*2 - 9*multiple, radiusY*2, startRad, rad);
    stroke(c4);
    arc (centX, centY, radiusX*2 - 12*multiple, radiusY*2, startRad, rad);
    ang += 5;
  }
  if (ang >= 450 && x3 >= startX-1*multiple){
    stroke(c2);
    line (centX, y3,x3, y3);
    x3 -=1*multiple; 
  }
}
  
