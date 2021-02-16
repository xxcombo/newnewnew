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
//= require jquery3
//= require rails-ujs
//= require bootstrap-sprockets 
//= require activestorage
//= require turbolinks
//= require_tree .

var body;

window.onload = function () {
  var timeBtn = document.querySelector('.time');

  body = document.querySelector('body');

  body.classList.add('day');

  timeBtn.addEventListener('click', toggleTime);

};

function toggleTime() {
  var isDay = body.classList.contains('day');
  if (isDay) {
    body.classList.remove('day');
    body.classList.add('night');
  } else {
    body.classList.remove('night');
    body.classList.add('day');
  }
}


