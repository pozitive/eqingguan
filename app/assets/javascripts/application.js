// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require social-share-button
//= require_tree .

$(function(){ $(document).foundation(); });

$("#featured").on("ready.fndtn.orbit", function(event) {
  console.info("ready");
});
$("#featured").on("before-slide-change.fndtn.orbit", function(event) {
    console.info("before slide change");
    $('.slider-wrapper').css( "background-position", "-=300% 0%");
});
$("#featuredn").on("after-slide-change.fndtn.orbit", function(event, orbit) {
  console.info("after slide change");
  console.info("slide " + orbit.slide_number + " of " + orbit.total_slides);
});
$("#featured").on("timer-started.fndtn.orbit", function(event, orbit) {
  console.info("timer started");
});
$("#featured").on("timer-stopped.fndtn.orbit", function(event, orbit) {
  console.info("timer stopped");
});
