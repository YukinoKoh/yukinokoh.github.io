float startX, startY, y1, margin;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size(72, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  margin = 1*multiple;
  startX = width/2;
  startY = margin;
  y1 = startY;
}

void draw(){
  if (y1 <= height){
    stroke(c3);
    line (startX, startY, startX, y1);
    stroke(c4);
    line (startX+2*multiple, startY, startX+2*multiple, y1);
    stroke(c2);
    line (startX-2*multiple, startY, startX-2*multiple, y1);
    stroke(c1);
    line (startX-4*multiple, startY, startX-4*multiple, y1);
    y1 +=1*multiple;
  }
}
