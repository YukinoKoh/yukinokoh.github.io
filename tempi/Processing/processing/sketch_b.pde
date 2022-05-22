float centX, startX, x1, x2, x3, x4, centX5, x6;
float centY, startY, y1, pointY3, centY5, pointY6;
float ang3, ang5;
float startAng = 270;
float startRad;
float diameter3, diameter5;
color c1 = color(255);
color c2 = color (80);
color c3 = color(50);
color c4 = color(40);
color bg = color(30);
float multiple = 3;

void setup(){
  size (144, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  ang3 = startAng;
  ang5 = startAng;
  startRad = radians(startAng);
  diameter3 = 22*multiple;
  diameter5 = 24*multiple;
  startX = 12*multiple;
  startY = 1*multiple;
  centX = 21*multiple;
  centY = 12*multiple;
  centX5 = centX + 0.5*multiple;
  centY5 = 35*multiple;

  pointY3 = 23*multiple;
  pointY6 = 47*multiple;
  x1 = startX;
  x2 = startX-3*multiple;
  x3 = centX;
  x4 = startX;
  x6 = centX5;
  y1 = startY;
  
}

void draw(){
  if (y1 <= height-1*multiple){
    stroke(c4);
    line (startX, startY, x1, y1);
    stroke(c3);
    line (startX-2*multiple, startY, x1-2*multiple, y1);
    stroke(c2);
    line (startX-4*multiple, startY, x1-4*multiple, y1);
    stroke(c1);
    line (startX-6*multiple, startY, x1-6*multiple, y1);
    y1 +=1*multiple;
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
    arc (centX, centY, diameter3, diameter3, startRad, rad3);
    stroke(c3);
    arc (centX, centY, diameter3+3*multiple, diameter3, startRad, rad3);
    stroke(c2);
    arc (centX, centY, diameter3+6*multiple, diameter3, startRad, rad3);
    stroke(c1);
    arc (centX, centY, diameter3+9*multiple, diameter3, startRad, rad3);
    ang3 +=5;
  }
  if (ang3 >=450 && x3 >= startX){
    strokeWeight(0.5);
    stroke(c2);
    line(centX, pointY3, x3, pointY3);
    x3 -= 1*multiple;
  }
  if (ang3 >=450 && x3 <= startX && x4 <= centX5){
    strokeWeight(1);
    stroke(c1);
    line (startX, pointY3, x4, pointY3);
    x4 +=1*multiple;
  }
  if (x4 >= centX && ang5 <=450){
    float rad5 = radians(ang5);
    strokeWeight(0.5);
    stroke(c4);
    arc (centX5, centY5, diameter5+3*multiple, diameter5, startRad, rad5);
    stroke(c3);
    arc (centX5, centY5, diameter5+6*multiple, diameter5, startRad, rad5);
    stroke(c2);
    arc (centX5, centY5, diameter5+9*multiple, diameter5, startRad, rad5);
    stroke(c1);
    arc (centX5, centY5, diameter5+12*multiple, diameter5, startRad, rad5);
    ang5 +=5;
  }
  if (ang5 >=450 && x6 >= startX-6*multiple){
    strokeWeight(0.5);
    stroke(c1);
    line(centX5, pointY6, x6, pointY6);
    x6 -= 1*multiple;
  }
}

