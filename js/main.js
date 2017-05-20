$(window).scroll(function() {
  var height = $(document).scrollTop(); 
  if (height >= 30){
    $("#arrow").css("visibility","visible");
    $("#arrow").addClass("animation-up");
  }else{
    $("#arrow").css("visibility","hidden");
    $("#arrow").removeClass("animation-up");
  }
});

