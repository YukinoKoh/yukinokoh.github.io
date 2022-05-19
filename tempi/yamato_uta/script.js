// set up canvas
const canvas = document.querySelector('.myCanvas');
const ctx = canvas.getContext('2d');
const width = canvas.width = window.innerWidth;
const height = canvas.height = window.innerWidth*0.4;
// ctx.translate(width/2, height/2);

const image = new Image();
image.src = 'img/topimage.png';
image.onload = draw;

let frameNum = 0;
// let posX = 0;
let lapse = 0
const lapseSpeed = 10;
const imageWidth = 3000;
const imageHeight = 1200;

ctx.fillStyle = 'rgba(121, 203, 138)';
ctx.fillRect(0, 0, width, height);

function draw() {
    // ctx.fillRect(-(width/2), -(height/2), width, height);
   // ctx.drawImage(image, 0, 0, 3000, 1200, 0, 0, width, height)
    
    ctx.drawImage(image, (frameNum*imageWidth), 0, imageWidth, imageHeight, 0, 0, width, height);
    if (frameNum === 1 && lapse === lapseSpeed) {
        frameNum = 0;
        lapse = 0;
      } else if (lapse === lapseSpeed){
        frameNum++;
        lapse = 0;
      } else if (lapse < lapseSpeed){
        lapse +=1;
    } 
    window.requestAnimationFrame(draw);
}

