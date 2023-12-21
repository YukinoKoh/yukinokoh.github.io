float startX, startY,x1, endX, endY, x2, y2, x3;
float margin, m, incline;
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
  startX = 5*m;
  startY = margin;
  x1 = startX;
  endX = 42*m;
  endY = height-m;
  x2 = endX;
  y2 = startY;
  x3 = startX;
  incline = 1.25*m;
}

void draw(){
  if (x1 <= endX){
    stroke(c1);
    line (startX, startY, x1, startY);
    if (x1 <= endX-0.8*m){
      stroke(c2);
      line (startX, startY+2*m, x1, startY+2*m);
    }
    if (x1 <= endX-1.6*m){
      stroke(c3);
      line (startX, startY+4*m, x1, startY+4*m);
    }if (x1 <= endX-2.4*m){
      stroke(c4);
      line (startX, startY+6*m, x1, startY+6*m);
    }
    x1 +=m;
  }
  if (x1 >= endX && x2>= startX){
    stroke(c1);
    line (endX, startY, x2, y2);
    x2 -=m;
    y2 +=incline;
  }
  if (x2<=startX && x3 <=endX){
    stroke(c1);
    line (startX, endY, x3, endY);
    if (x3 >= startX+0.8*m){
      stroke(c2);
      line (startX+1.6*m, endY-2*m, x3, endY-2*m);
    }
    if (x3 >= startX+1.6*m){
      stroke(c3);
      line (startX+3.2*m, endY-4*m, x3, endY-4*m);
    }
    if (x3 >= startX+2.4*m){
      stroke(c4);
      line (startX+4.8*m, endY-6*m, x3, endY-6*m);
    }
    x3 +=m;
  }
}
    
  
