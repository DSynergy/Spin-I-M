$(document).ready(function () {
  $('#be_heard').click(function () {
    var $new_message = $('#message').val();
    $('#messages').append("<li style='list-style-type: none;'>" + $new_message + "</li>");
    $('#message').val('');
  });
});
