var img3 = document.getElementById("img1");
var img2 = document.getElementById("img2");
var img3 = document.getElementById("img3");
var img4 = document.getElementById("img4");
var img5 = document.getElementById("img5");
var img6 = document.getElementById("img6");
var imageContainer = document.getElementById("imageContainer");
var width = document.body.clientWidth;
var positionY = 60;
var margin =20;
var numImage = 6;

document.addEventListener('DOMContentLoaded', function(event) {
    placeImage()
  });

window.addEventListener("resize", function(event) {
    placeImage()
});

function placeImage(){
    width = document.body.clientWidth;
    var postionX=0;
    var positionYcol1 = positionY;
    var positionYcol2 = positionY;
    var positionYcol3 = positionY;
    if (width<768){
        for (var i = 1; i <= numImage; i++){
            var target = 'img'+i.toString();
            var image = document.getElementById(target);
            image.style.position='relative';
            image.style.float='left';
            image.style.left=0;
            positionYcol1=positionYcol1+image.height+margin;
        }

    } else if (width<1024){
        for (var i = 1; i <= numImage; i++){
            var target = 'img'+i.toString();
            var image = document.getElementById(target);
            image.style.position='absolute';
            if (i%2 == 1){
                image.style.left=postionX;
                image.style.top=positionYcol1;
                positionYcol1=positionYcol1+image.height+margin;
            } else{
                image.style.left=postionX+320;
                image.style.top=positionYcol2;
                positionYcol2=positionYcol2+image.height+margin;
            } 
        }
    } else{
       
        for (var i = 1; i <= numImage; i++){
            var target = 'img'+i.toString();
            var image = document.getElementById(target);
            image.style.position='absolute';
            if (i%3 == 1){
                image.style.left=postionX;
                image.style.top=positionYcol1;
                positionYcol1=positionYcol1+image.height+margin;
            } else if(i%3 == 2){
                image.style.left=postionX+320;
                image.style.top=positionYcol2;
                positionYcol2=positionYcol2+image.height+margin;
            } else{
                image.style.left=postionX+640;
                image.style.top=positionYcol3;
                positionYcol3=positionYcol3+image.height+margin;
            } 
        }
        console.log(Math.max(positionYcol1,positionYcol2,positionYcol3));
    }
    var containerHeight=Math.max(positionYcol1,positionYcol2,positionYcol3);
    imageContainer.style.height=containerHeight;
}