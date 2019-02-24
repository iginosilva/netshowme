// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require video


var sendViewCount = function() {
  var video = { view_count: 1 };
  var video_json_data = JSON.stringify({video});

  var xhr = new XMLHttpRequest();
  xhr.open('PATCH', '/api/v1/videos/' + $("#video-id").attr("value"), true);
  xhr.setRequestHeader('Content-Type', 'application/json');
  xhr.onload = function () {
    if (xhr.readyState == 4 && xhr.status == "200") {
      var request_response = JSON.parse(xhr.responseText);
      console.log(request_response);
      $("#view_count").text(request_response["view_count"] + " visualizações");
    } else {
      console.log(request_response);
    }
  };
  xhr.send(video_json_data);
}


$(document).ready(function () {
  if ( window.location.pathname.includes("/show-video") && $('#my-video').length === 1 ) {
    var player = videojs('my-video');
    player.play();
    player.on('play', function () {
      sendViewCount();
    });
  } 
});