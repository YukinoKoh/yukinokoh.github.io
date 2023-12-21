float startX, startY, y1, startX2, x2, y2, x3, y3, x4, y4, margin;
float horizontal1, horizontal2;
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
  startX = 11*multiple;
  startY = margin; 
  y1 = startY;
  startX2 = 33*multiple;
  x2 = startX2;
  y2 = startY;
  horizontal1 = 23*multiple;
  horizontal2 = 20*multiple;
  x3 = 21*multiple;
  y3 = horizontal2;
  x4 = x3;
  y4 = y3;
}

void draw(){
  if (y1 <= height){
    stroke(c4);
    line (startX, startY, startX, y1);
    stroke(c3);
    line (startX-2*multiple, startY, startX-2*multiple, y1);
    stroke(c2);
    line (startX-4*multiple, startY, startX-4*multiple, y1);
    stroke(c1);
    line (startX-6*multiple, startY, startX-6*multiple, y1);
    y1 +=1*multiple;
  }
  if (y1 > startY && y2 <= horizontal1+7*multiple){
    if (y2 <= horizontal1){
      stroke(c1);
      line (startX2, startY, x2, y2);
    }
    if (y2 <= horizontal1 +2*multiple){
      stroke(c2);
      line (startX2 + 2*multiple, startY, x2 +2*multiple, y2);
    }
    if (y2 <= horizontal1 +4*multiple){
      stroke(c3);
      line (startX2 + 4*multiple, startY, x2 +4*multiple, y2);
    }
    if (y2 <= horizontal1 +6*multiple){
      stroke(c4);
      line (startX2 + 6*multiple, startY, x2 +6*multiple, y2);
    }
    x2 -=1*multiple;
    y2 +=1*multiple;
  }
  if (y2 >= horizontal2 && y4 < height){
    stroke(c1);
    line (x3, y3, x4, y4);
    if (y2 >= horizontal2 +1*multiple){
      stroke(c2);
      line (x3-1*multiple, y3 +1*multiple, x4-2*multiple, y4);
    }
    if (y2 >= horizontal2 +2*multiple){
      stroke(c3);
      line (x3-2*multiple, y3 +2*multiple, x4-4*multiple, y4);
    }    
    if (y2 >= horizontal2 +3*multiple){
      stroke(c4);
      line (x3-3*multiple, y3 +3*multiple, x4-6*multiple, y4);
    }
    x4 +=1*multiple;
    y4 +=1.25*multiple;
    
  }
}
    
