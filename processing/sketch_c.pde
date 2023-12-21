float centX, centY, ang, startRad, endRad, diameterX, diameterY;
float startAng = 300;
float endAng =50;
float multiple = 3;
color c1 = color(255);
color c2 = color (80);
color c3 = color(50);
color c4 = color(40);
color bg = color(30);



void setup(){
  size(144, 144);
  background(bg);
  smooth();
  noFill();
  frameRate(12);
  stroke(255,255,255,50);
  strokeWeight(0.5);
  centX = width/2 + 1*multiple;
  centY = width/2;
  startRad = radians(startAng);
  endRad = radians(endAng);
  diameterX = width- 3*multiple;
  diameterY = height- 2*multiple;
  ang = startAng;
}

void draw(){
  if (ang >= endAng){
    float rad = radians(ang);
    stroke(c1);
    arc (centX, centY, diameterX, diameterY, rad, startRad);
    stroke(c2);
    arc (centX+0.5*multiple, centY, diameterX-2*multiple, diameterY-0.5*multiple, rad, startRad);
    stroke(c3);
    arc (centX+1*multiple, centY, diameterX-4*multiple, diameterY-1*multiple, rad, startRad);
    stroke(c3);
    arc (centX+1.5*multiple, centY, diameterX-6*multiple, diameterY-1.5*multiple, rad, startRad);
    stroke(c4);
    arc (centX+2*multiple, centY, diameterX-8*multiple, diameterY-2*multiple, rad, startRad);
    ang -=5;
  }
}
