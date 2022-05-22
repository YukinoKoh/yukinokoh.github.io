float centX, startX, x1, x2, x3, margin, m;
float centY, startY, y1, pointY3, ang3;
float startAng = 270;
float startRad;
float radius3, radius5;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size (144, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  m = multiple;
  margin = 1*m;
  ang3 = startAng;
  startRad = radians(startAng);
  radius3 = 11*m;
  startX = 12*m;
  startY = margin;
  centX = 21*m;
  centY = radius3 + startY;
  pointY3 = centY + radius3;
  x1 = startX;
  x2 = startX-3*m;
  x3 = centX;
  y1 = startY;
  
}

void draw(){
  if (y1 <= height-1*m){
    stroke(c4);
    line (startX, startY, x1, y1);
    stroke(c3);
    line (startX-2*m, startY, x1-2*m, y1);
    stroke(c2);
    line (startX-4*m, startY, x1-4*m, y1);
    stroke(c1);
    line (startX-6*m, startY, x1-6*m, y1);
    y1 +=1*m;
  }
  if (y1 >startY && x2 <= centX){
    stroke(c1);
    line(startX-6*multiple, startY, x2,startY);
    x2 +=1*multiple;
  }
  if (x2 >= centX && ang3 <=450){
    float rad3 = radians(ang3);
    strokeWeight(0.5);
    stroke(c4);
    arc (centX, centY, radius3*2, radius3*2, startRad, rad3);
    stroke(c3);
    arc (centX, centY, radius3*2+3*m, radius3*2, startRad, rad3);
    stroke(c2);
    arc (centX, centY, radius3*2+6*m, radius3*2, startRad, rad3);
    stroke(c1);
    arc (centX, centY, radius3*2+9*m, radius3*2, startRad, rad3);
    ang3 +=5;
  }
  if (ang3 >=450 && x3 >= startX){
    strokeWeight(0.5);
    line(centX, pointY3, x3, pointY3);
    x3 -= 1*m;
  }



}

