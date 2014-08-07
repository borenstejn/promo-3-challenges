function reset() {
  $('#player1, #player2')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
}

function forward(row) {
  var active = row.find('.active');
  var next = active.next();

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    alert(row.attr('id') + " wins!");
    reset();
  }
}

$(function() {
  var player1 = $('#player1'),
      player2 = $('#player2');

  $(document).on('keyup', function(e) {
    if (e.keyCode == 81) {
      forward(player1);
    }
    else if (e.keyCode == 80) {
      forward(player2);
    }
  });
});
