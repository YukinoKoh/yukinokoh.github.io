float startX, startY, y1, x2, y2, middleX, middleY;
float y3, x3, startX4, y4, margin;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size (180, 144);
  background (bg);
  smooth();
  noFill();
  frameRate(18);
  strokeWeight(0.5);
  margin = 1*multiple;
  startX = 4*multiple;
  startY = margin;
  y1 = startY;
  x2 = startX;
  y2 = startY;
  middleX = 26*multiple;
  middleY = height - 3*multiple;
  y3 = middleY;
  x3 = middleX;
  startX4 = 48*multiple;
  y4 = startY;
}

void draw(){
  if (y1 <= height){
    stroke(c1);
    line (startX, startY, startX, y1);
    y1 +=1*multiple;
  }
  if (y1 > startY && y2 <= middleY){
    stroke (c1);
    line (startX, startY, x2, y2);
    if (y2 >= startY + 2*multiple){
      stroke(c2);
      line (startX+2*multiple, startY, x2+2*multiple, y2-2*multiple);
    }
    if (y2 >= startY + 4*multiple){
      stroke(c3);
      line (startX+4*multiple, startY, x2+4*multiple, y2-4*multiple);
    }
    if (y2 >= startY + 6*multiple){
      stroke(c4);
      line (startX+6*multiple, startY, x2+6*multiple, y2-6*multiple);
    }
    x2 += 1*multiple;
    y2 +=2*multiple;
  }
  if (y2 >= middleY && y3 >= startY){
    stroke(c2);
    line (middleX, middleY, x3, y3);
    x3 +=1*multiple;
    y3 -=2*multiple;
  }
  if (y3 <= startY && y4 <= height){
    stroke(c1);
    line (startX4, startY, startX4, y4);
    stroke (c2);
    line (startX4+2*multiple, startY, startX4+2*multiple, y4);
    stroke(c3);
    line (startX4+4*multiple, startY, startX4+4*multiple, y4);
    stroke(c4);
    line (startX4+6*multiple, startY, startX4+6*multiple, y4);
    y4 +=1*multiple;
  }
}

