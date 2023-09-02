var imageContainer = document.getElementById("imageContainer");
var width = document.body.clientWidth;
var positionY = 60;
var margin =20;
var colNum;
var loadStart = 1
var loadEnd = 19;
var loadDone = false;
var language = 'EN';

document.addEventListener('DOMContentLoaded', function() {
  includeHTML(),
  placeImage()
}, false);

window.addEventListener("resize", function() {
  placeImage()
},false);

window.addEventListener('load', function() {
  placeImage()
}, false);

window.onload = function() {
  placeImage()
};

async function includeHTML() {
    var z, i, elmnt, file, xhttp;
    /* Loop through a collection of all HTML elements: */
    z = document.getElementsByTagName("*");
    for (i = 0; i < z.length; i++) {
      elmnt = z[i];
      /*search for elements with a certain atrribute:*/
      file = elmnt.getAttribute("w3-include-html");
      if (file) {
        /* Make an HTTP request using the attribute value as the file name: */
        xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4) {
            if (this.status == 200) {elmnt.innerHTML = this.responseText;}
            if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
            /* Remove the attribute, and call this function once more: */
            elmnt.removeAttribute("w3-include-html");
            includeHTML();
          }
        }
        xhttp.open("GET", file, true);
        xhttp.send();
        /* Exit the function: */
        return;
      }
    }
    return 'resolved';
  }

function placeImage(){
  width = document.body.clientWidth;
  var postionX=0;
  var positionYcol1 = positionY;
  var positionYcol2 = positionY;
  var positionYcol3 = positionY;
  if (width<768){
      colNum = 1;
      for (var i = loadStart; i <= loadEnd; i++){
          var target = 'img'+i.toString();
          var image = document.getElementById(target);
          // image.classList.remove('no-display');
          image.style.position='relative';
          image.style.float='left';
          image.style.left='';
          image.style.top='';
          positionYcol1=positionYcol1+image.height+margin;
      }

  } else if (width<1024){ 
    colNum = 2;
      for (var i = loadStart; i <= loadEnd; i++){
          var target = 'img'+i.toString();
          var image = document.getElementById(target);
          // image.classList.remove('no-display');
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
    colNum = 3;
      for (var i = loadStart; i <= loadEnd; i++){
          var target = 'img'+i.toString();
          var image = document.getElementById(target);
          // image.classList.remove('no-display');
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
  }
  var containerHeight=Math.max(positionYcol1,positionYcol2,positionYcol3);
  imageContainer.style.height=containerHeight;
}

function switchJP(){
    document.getElementById('profile').innerHTML = '<div w3-include-html="res/jp.html"></div>';
    includeHTML();
}
function switchEN(){
  document.getElementById('profile').innerHTML = '<div w3-include-html="res/en.html"></div>';
  includeHTML();
}

/* window.addEventListener('scroll', function(){
  if (loadDone==false){
    console.log('Y; '+ this.window.scrollY);
    if (colNum == 1 & window.scrollY > 3000){
      loadUntil = loadEnd;
      placeImage();
      loadDone = true;
    } else if (colNum == 2 & window.scrollY > 1000){
      loadUntil = loadEnd;
      placeImage();
      loadDone = true;
    } else if (colNum == 3 & window.scrollY > 700){
      loadUntil = loadEnd;
      placeImage();
      loadDone = true;
    }
  } 
},false);
*/

function openmenu(){
  var icon = document.getElementById("menu-icon");
  var menu = document.getElementById("menu");
  // if it is true, the menu is open and action move to the opposite status
  if(icon.hasAttribute("menu")== true){
    // to close the menu
    icon.removeAttribute("menu", "class");
    icon.setAttribute("class", "rotate-menu-to-close");
    menu.removeAttribute("class");
    menu.setAttribute("class","hidden");
  }else{
    // to open the menu
    icon.setAttribute("menu","on")
    icon.setAttribute("class", "rotate-menu-to-open");
    menu.removeAttribute("class");
    menu.setAttribute("class","show fill s-menu l-title");
  }
}