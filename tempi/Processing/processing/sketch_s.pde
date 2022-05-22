float ang1, ang2, ang3, ang4, margin, m;
float centX1, centY1, x2, y2, x2a, x2b, x2c, centY3, diameterX1, diameterY1;
float startRad1, startRad3, rad1, rad2, rad3;
float startAng1 = 350;
float endAng1 = 160;
float startAng2 = 280;
float endAng2 = 436;
float startAng3 = -30;
float endAng3 = 180;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3.0;

void setup(){
  size(144, 144);
  background(bg);
  smooth();
  noFill();
  frameRate(48);
  strokeWeight(0.5);
  m = 1*multiple;
  margin = 1*m;
  centX1 = width/2-1*m;
  centY1 = height/4 + 0.5*m;
  x2 = 18*m;
  y2 = 14*m;
  centY3 = height-centY1;
  diameterX1 = 21*m;
  diameterY1 = 23*m;
  startRad1 = radians(startAng1);
  startRad3 = radians(startAng3);
  ang1 = startAng1;
  ang2 = startAng2;
  ang3 = startAng3;
}

void draw(){  
  if (ang1 >= endAng1){
   strokeWeight(0.5);
   stroke (c4);
   rad1 = radians (ang1);
   arc (centX1, centY1, diameterX1-3*m, diameterY1, rad1, startRad1);
   stroke (c3);
   arc (centX1+0.5*m, centY1, diameterX1, diameterY1, rad1, startRad1);
   stroke (c2);
   arc (centX1+1.0*m, centY1, diameterX1+3*m, diameterY1, rad1, startRad1);
   stroke (c1);
   arc (centX1+1.5*m, centY1, diameterX1+6*m, diameterY1, rad1, startRad1);
   ang1 -=2.5;
  }
  if (ang1 <= 180 && ang2 <= endAng2){
    
    strokeWeight(1);
    rad2 = radians(ang2);
    x2 = sin(rad2)*12.66*m + 22*m;
    x2a = sin(rad2)*11.5*m + 22*m;
    x2b = sin(rad2)*10.3*m + 22*m;
    x2c = sin(rad2)*9.16*m + 22*m;
    y2 +=0.11*m;
    stroke(c1);
    point (x2+1.8*m, y2);
    stroke(c2);
    point (x2a+1.6*m, y2);
    stroke(c3);
    point (x2b+1.4*m, y2);
    stroke(c4);
    point (x2c+1*m, y2);
    ang2 +=1;
  }
  if (ang2 >= endAng2 && ang3 <= endAng3){
    strokeWeight(0.5);
   rad3 = radians (ang3);
   stroke (c4);
   arc (centX1, centY3, diameterX1-2*m, diameterY1, startRad3, rad3);
   stroke (c3);
   arc (centX1-0.5*m, centY3, diameterX1+2*m, diameterY1, startRad3, rad3);
   stroke (c2);
   arc (centX1-1*m, centY3, diameterX1+6*m, diameterY1, startRad3, rad3);
   stroke (c1);
   arc (centX1-1.5*m, centY3, diameterX1+10*m, diameterY1, startRad3, rad3);
   ang3 +=2.5;
  }
}
  
