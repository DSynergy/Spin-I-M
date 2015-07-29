$(document).ready(function () {
  var socket = io("http://localhost:3001");

  $('#be_heard').click(function () {
    var $new_message = $('#text_box').val();
    $('#text_box').val('');
    socket.send('message', {body: $new_message});
  });

  socket.on('message', function(message){
    $('#messages').append("<li style='list-style-type: none;'>" + message.body + "</li>");
  });
});
