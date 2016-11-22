$(document).ready(function(){

  var $actionLink = $('.js-clickable');
  var $target = $('.js-target');

  $actionLink.on('mouseover', function(){
    //%target.toggle();
    // $tartget.append("<h2>Look ma!</h2>");
    $target.toggleClass("rot")
  });

  // var elements = document.querySelectorAll('.js-clickable');

  // elements.forEach.call(elements,function(e){
  //  e.addEventListener('click', function({
  //    alert("clicked!");
  //   })
  // });

});
