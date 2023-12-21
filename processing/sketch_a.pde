float x1, x2, x3, x4, x5;
float y1, y2, y3, y4;
float z5;
float centX;
float horizontal;
color c1 = color(255);
color c2 = color (80);
color c3 = color (50);
color c4 = color (40);
color bg = color(30);
float multiple = 3;

void setup(){
  size (144, 144);
  centX = width/2;
  horizontal = 24 * multiple;
  x1 = centX;
  x2 = 0; 
  x3 = 0;
  x4 = 0;
  x5 = 0;
  y1 = 0; 
  y2 = 0;
  y3 = 0;
  y4 = 0;
  z5 = 0;
  
  background(bg);
  strokeWeight (0.5);
  noFill();
  frameRate(12);
}

void draw(){

    if (y1 < height){
      stroke(c1);
      line (centX, 0, x1, y1);
      if (x1 == centX){
        x2 = x1;
        y2 = y1;
        x3 = x2;
        y3 = y2;
      }
      x1 -=1*multiple;
      y1 +=2*multiple;
      if (y1 == horizontal){
        x4 = x1;
        y4 = y1;
        x5 = x4;
      }
    }
    if (y2 <= height && x2 <=centX && y3 <= height+10*multiple){
        if (y3 <=height){  
          stroke(c1);
          line (x2, y2, x3, y3);
        }
        if (y3 > 2*multiple && y3 < height +2*multiple){
          stroke(c2);
          line (x2-1*multiple, y2+2*multiple, x3-3*multiple, y3-2*multiple);
        }
        if (y3 > 6*multiple && y3 < height +4*multiple){
          stroke(c3);
          line (x2-2*multiple, y2+4*multiple, x3-6*multiple, y3-4*multiple);
        }
        if (y3 > 10*multiple && y3 < height +6*multiple){
          stroke(c4);
          line (x2-3*multiple, y2+6*multiple, x3-9*multiple, y3-6*multiple);
        }
        
        
        x3 +=1*multiple;
        y3 +=2*multiple;
        if (y3 ==horizontal){
          z5 = x3-5*multiple;
        }
     }
     if (y4 == horizontal && x5 <z5 + 4*multiple){
       strokeWeight (0.5);
         if (x5 <z5){
           stroke(c1);
           line (x4, y4, x5, y4);
          
         }
         if (y1 > horizontal + 2*multiple){
           stroke(c2);
            line(x4 - 1 * multiple, y4 + 2* multiple, x5 -3*multiple, y4 + 2* multiple);  
         }
         if (y1 > horizontal + 4*multiple){
           stroke(c3);
          line(x4 - 2 * multiple, y4 + 4* multiple, x5 -2*multiple, y4 + 4* multiple);  
         }
          x5 +=1*multiple;
     } 
        
}

