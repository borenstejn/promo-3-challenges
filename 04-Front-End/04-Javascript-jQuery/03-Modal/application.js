$(function() {





  $('img').click(function(){
    var $src = $(this).attr('src');
    $('div.overlay').append("<img src='" +$src+ "'id='modal'>");
    $('.overlay').fadeIn();
    console.debug($src);
  });

  $('.overlay').click(function(){
    $('div.overlay').empty();

    $('.overlay').hide();
  });





});