float startX, startY, y1, x2, horizontal, endX, margin;
float multiple = 3;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);

void setup(){
  size (144, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  margin = 1*multiple;
  startX = 9*multiple;
  startY = margin; 
  y1 = startY;
  x2 = startX;
  horizontal = height - margin;
  endX = 35*multiple;
}

void draw(){
  if (y1 < height){
    strokeWeight(0.5);
    stroke(c1);
    line (startX, startY, startX, y1);
    stroke(c2);
    line (startX + 2*multiple, startY, startX + 2*multiple, y1);
    stroke(c3);
    line (startX + 4*multiple, startY, startX + 4*multiple, y1);
    stroke(c4);
    line (startX + 6*multiple, startY, startX + 6*multiple, y1);
    
    y1 +=1*multiple;
  }
  if (y1 >= horizontal && x2 < endX){
    stroke(c1);
    line (startX, horizontal, x2, horizontal);
    x2 +=1*multiple;
  }
}
