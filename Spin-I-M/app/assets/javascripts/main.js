$(document).ready(function () {
  $('#be_heard').click(function () {
    var $new_message = $('#text_box').val();
    $('#messages').append("<li style='list-style-type: none;'>" + $new_message + "</li>");
    $('#text_box').val('');
  });
});
