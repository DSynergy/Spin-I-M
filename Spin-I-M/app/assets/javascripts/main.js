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

  $('.increasePopularity').click(function() {
    var songId = $(this).data('id');
    $.ajax({
      method: "POST",
      url: "/songs/increase/" + songId,
      success: function(data) {
        $('#song-score-' + songId).replaceWith("<h5>" + data.popularity + "</h5>"); 
        $('#breadcrumb-' + songId).replaceWith("<div> Thanks for voting! </div>");
        return false;
      }
    });
  });

  $('.decreasePopularity').click(function() {
    var songId = $(this).data('id');
    $.ajax({
      method: "POST",
      url: "/songs/decrease/" + songId,
      success: function(data) {
        $('#song-score-' + songId).replaceWith("<h5>" + data.popularity + "</h5>"); 
        $('#breadcrumb-' + songId).replaceWith("<div> Thanks for voting! </div>");
        return false;
      }
    });
  });


});
