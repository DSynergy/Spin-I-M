const username = current_user;

$(document).ready(function () {
  var socket = io.connect("http://localhost:3001");

  $('#be_heard').click(function () {
    var $new_message = $('#text_box').val();
    $('#text_box').val('');
    socket.send('message', {body: $new_message});
  });

  // socket.on('message', function(message){
  //   $('#messages').append("<li style='list-style-type: none;'>" + message.body + "</li>");
  // });
  socket.on('message', function (username, message) {
    debugger

		$('#messages').append("<li style='list-style-type: none;'>" +
                          '<b>' + username + ':</b>' +
                          message.body + "</li>" + '<br>');
	});

  socket.on('updateusers', function(data) {
		$('#users').empty();
		$.each(data, function(key, value) {
			$('#users').append('<div>' + key + '</div>');
		});
	});

});
