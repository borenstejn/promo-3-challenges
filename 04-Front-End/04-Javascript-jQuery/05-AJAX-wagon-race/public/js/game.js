var winner_id;
var winner_string;
var json_create;
var game_id;
var data_finish;
var finish_time;
var start_time;
var elapsed_time;
var player1;
var player2;


function keyupFunc(e){
      if (e.keyCode == 81) {
        forward(player1);
      }
      else if (e.keyCode == 80) {
        forward(player2);
      }
    }


function reset() {
  console.log('start:'+start_time);
  $('#player1, #player2')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
    console.log(data_finish);
    $(document).bind('keyup', keyupFunc);

}

function forward(row) {
  var active = row.find('.active');
  var next = active.next();

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    alert(row.data('player-name') + " wins!");
    winner_string = row.data('player-name');
    finish_time = event.timeStamp
    elapsed_time = finish_time-start_time;
    if (winner_string == json_create.game.players[0].name){
      winner_id = json_create.game.players[0].id ;
      }
    else {
      winner_id = json_create.game.players[1].id;
    };


    data_finish = JSON.stringify({
        "winner": winner_id,
        "elapsed_time": elapsed_time
      });

    $.post('/game/'+game_id+'/finish', data_finish);

    console.log('elapsed:'+elapsed_time);

    $('#newgame-btn').show();

    $(document).unbind('keyup');
  }
}




$(function() {
  var session_id,
      start_button = $('#start-btn'),
      newgame_btn = $('#newgame-btn'),
      names_form = $('#names-form');
  player1 = $('#player1'),
  player2 = $('#player2');


  $.getJSON('/session/create', function(data_json) {
    console.log(data_json);
    session_id = data_json.id;
    start_button.show();
  });

  start_button.on('click', function() {
    start_button.hide();
    names_form.show();
  });

  newgame_btn.on('click', function() {
    newgame_btn.hide();
    start_time = event.timeStamp;
    reset();
  });

  names_form.on('submit', function(event) {
    event.preventDefault();
    var $player1 = $('#player1-name');
    var name_player1 = $player1.val();
    var name_player2 = $('#player2-name').val();
    $('#player1').data('player-name', name_player1);
    $('#player2').data('player-name', name_player2);

    start_time = event.timeStamp;


    var data = JSON.stringify({
      players: [
        { name: name_player1 },
        { name: name_player2 }
      ]
    });

    $.post('/session/'+session_id+'/game/create', data, function(data_json) {
      console.log(data_json);
      game_id = data_json.game.id;
      json_create = data_json
    });


    names_form.hide();
    $('#board').show();



    $(document).bind('keyup', keyupFunc);


    // if (winner_string == json_create.game.players[0].name){
    //   var winner_id = json_create.game.players[0].id ;
    //   }
    // else {
    //   var winner_id = json_create.game.players[1].id;
    // };







  });
});