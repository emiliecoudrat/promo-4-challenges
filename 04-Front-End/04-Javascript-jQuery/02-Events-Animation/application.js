$(function() {
  $('#message').slideDown('slow');

  $('#message').on('click', function(e) {
    $(this).slideUp('slow');
  });

  $('#message-wrapper').on("mouseenter", function(e){
    $("#message").slideDown(500);
  });

});




/*
  *
  * TODO: add your code here!
  *
*/
