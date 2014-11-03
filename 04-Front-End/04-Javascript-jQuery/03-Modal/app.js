$(function() {

  var blackDiv = $('<div>').addClass("black");
  var modalDiv = $('<div>').addClass("modal");


  $("img").on('click', function(e){
    $('body').append(blackDiv);
    img = $("<img src='" + $(this).attr("src") + "'>");
    img.appendTo(modalDiv);
    $('body').append(modalDiv);
    $(img).fadeIn(500);

  $(blackDiv).on('click', function(e){
    $(blackDiv).remove();
    $(img).remove();
  })


  });
});