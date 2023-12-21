float startX, startY, x1, y1, pointX, pointY, x2, y2;
float margin, m;
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
  startX = m;
  startY = m;
  x1 = startX; 
  y1 = startY;
  pointX = width/2;
  pointY = height - margin;
  x2 = pointX;
  y2 = pointY;
}

void draw(){
  if(y1 <pointY){
    stroke(c1);
    line (startX, startY, x1, y1);
    if (y1 >= startY+2*m){
      stroke(c2);
      line (startX+2*m, startY, x1+2*m, y1-2*m);
    }
    if (y1 >= startY+4*m){
      stroke(c3);
      line (startX+4*m, startY, x1+4*m, y1-4*m);
    }
    if (y1>= startY+6*m){
      stroke(c4);
      line (startX+6*m, startY, x1+6*m, y1-6*m);
    }
    x1 +=1*m;
    y1 +=2*m;
  }
  if (y1 >= pointY && y2 >= startY){
    stroke(c1);
    line(pointX, pointY, x2, y2);
    x2 +=1*m;
    y2 -=2*m;
  }
}
    
    
