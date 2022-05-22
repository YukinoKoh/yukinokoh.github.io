float centX, centY, diameterX, diameterY, margin,m;
float ang1, ang2, rad1, rad2;
float ang3, rad3, x3, y3;
float centX4, centY4, diameterX4, diameterY4;
float startAng = 270;
float startAng3 = 180;
float endAng1 = 90;
float endAng2 = 450;
float endAng3 = 560;
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
  frameRate(36);
  strokeWeight(0.5);
  m = 1*multiple;
  margin = 1*m;
  centX = width/2;
  centY = height/2;
  diameterX = height-2*m;
  diameterY = height-2*margin;
  ang1 = startAng;
  ang2 = startAng;
  ang3 = startAng3;
  x3 = 8*m;
  y3 = 43*m;
  
}

void draw(){
  if (ang1 >= endAng1 || ang2 <= endAng2){
    rad1 = radians(ang1);
    rad2 = radians(ang2);
    stroke(c1);
    arc (centX, centY, diameterX, diameterY, rad1, rad2);
    stroke(c2);
    arc (centX, centY, diameterX-4*m, diameterY, rad1, rad2);
    stroke(c3);
    arc (centX, centY, diameterX-8*m, diameterY, rad1, rad2);
    stroke(c4);
    arc (centX, centY, diameterX-12*m, diameterY, rad1, rad2);
    ang1 -=1.6;
    ang2 +=1.6;
    
  } 
  
  if (ang2 >= endAng2 && ang3 <= endAng3){

    strokeWeight(1);
    stroke(c1);
    point (x3,y3);
    stroke(c1,100);
    point (x3+m, y3+m);
    stroke(c2);
    point (x3+2*m, y3+2*m);
    smooth();
    rad3 = radians(ang3);
    y3 = sin(rad3) *5.5*m +40*m;
    x3 +=0.1*m;
    ang3 +=1;
  } 



}
  
  
