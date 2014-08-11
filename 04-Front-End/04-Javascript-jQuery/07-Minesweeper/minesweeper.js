// Good luck!
var num=1;
var neighboor;

$('td').click(function(){
  var col = $(this).parent().children().index($(this));
  var row = $(this).parent().parent().children().index($(this).parent());

  $(this)

  $('((tbody tr:nth-child('+num+')) td:nth-child(1)').addClass('test');

  // $(this).parent().attr('id','test');





  // $('tbody tr:nth-child('+num+')').addClass('test');
  console.debug(num);
  console.debug($(this).parent().parent().children().index($(this).parent()));
  // console.debug($(this).parent().children().index(2));
});


// $('.mined).addClass('test')