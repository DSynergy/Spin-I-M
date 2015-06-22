$(document).ready(function () {

  $('.increasePopularity').click(function(e) {
    e.preventDefault();
    var songId = $(this).data('id');
    $.ajax({
      method: "POST",
      url: "/songs/increase/" + songId,
      success: function(data) {
        $('#song-score-' + songId).replaceWith("<h5>" + data.popularity + "</h5>");
        $('#breadcrumb-' + songId).replaceWith('<div class="breadcrumb" style="margin: 14px;"><a href="#" >Thanks for voting!</a>');
        return false;
      }
    });
  });

  $('.decreasePopularity').click(function(e) {
    e.preventDefault();
    var songId = $(this).data('id');
    $.ajax({
      method: "POST",
      url: "/songs/decrease/" + songId,
      success: function(data) {
        $('#song-score-' + songId).replaceWith("<h5>" + data.popularity + "</h5>");
        $('#breadcrumb-' + songId).replaceWith('<div class="breadcrumb" style="margin: 14px;"><a href="#" >Thanks for voting!</a>');
        return false;
      }
    });
  });
});
