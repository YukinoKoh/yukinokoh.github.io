float startX, startY, centX, centY, y1, diameterX, diameterY, margin;
float startAng = 0;
float endAng = 160;
float startRad, ang;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple =3;

void setup(){
  size (108, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(12);
  strokeWeight(0.5);
  margin = 1*multiple;
  startX = width/2 + 12*multiple;
  startY = margin;
  centX = width/2;
  centY = height -12*multiple;
  diameterX = 12*multiple; 
  diameterY = 24*multiple;
  y1 = startY;
  startRad = radians(startAng);
}

void draw(){
  if (y1 <= centY){
    stroke(c1);
    line (startX, startY, startX, y1);
    stroke(c2);
    line (startX-2*multiple, startY, startX-2*multiple, y1);
    stroke(c3);
    line (startX-4*multiple, startY, startX-4*multiple, y1);
    stroke(c4);
    line (startX-6*multiple, startY, startX-6*multiple, y1);
    y1 +=1*multiple;
  }
  if (y1 >= centY && ang <= endAng){
    float rad = radians(ang);
    strokeWeight(0.5);
    stroke(c1);
    arc(centX, centY, diameterX+12*multiple, diameterY,startRad, rad);  
    stroke(c2);
    arc(centX, centY, diameterX+8*multiple, diameterY-4*multiple,startRad, rad);
    stroke(c3);  
    arc(centX, centY, diameterX+4*multiple, diameterY-8*multiple,startRad, rad); 
    stroke(c4); 
    arc(centX, centY, diameterX, diameterY-12*multiple,startRad, rad);  

    ang +=5;
  }
}
    
    
  
  
