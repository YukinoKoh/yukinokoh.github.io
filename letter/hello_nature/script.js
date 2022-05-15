// set up canvas
const canvas = document.querySelector('.myCanvas');
const ctx = canvas.getContext('2d');
const width = canvas.width = window.innerWidth;
const height = canvas.height = window.innerHeight/2;
// ctx.translate(width/2, height/2);

const image = new Image();
image.src = 'plants2.svg';
image.onload = draw;

let frameNum = 0;
// let posX = 0;
let lapse = 0
const lapseSpeed = 4;

ctx.fillStyle = 'rgba(0, 0, 0)';
ctx.fillRect(0, 0,  width, height);

function draw() {
    // ctx.fillRect(-(width/2), -(height/2), width, height);
    ctx.drawImage(image, (frameNum*232), 0, 232, 254, 0, 0, 232, 254);
      if (frameNum === 6 && lapse === lapseSpeed) {
        frameNum = 0;
        lapse = 0;
      } else if (lapse === lapseSpeed){
        frameNum++;
        lapse = 0;
      } else if (lapse < lapseSpeed){
        lapse +=1;
    } 
    
    /*
    if(posX > width/2) {
        let newStartPos = -((width/2) + 102);
        posX = Math.ceil(newStartPos);
        console.log(posX);
      } else {
        posX += 2;
      }
      */
    window.requestAnimationFrame(draw);
}

