// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap/modal

//= require turbolinks
//= require jquery
//= require jquery-ui
//= require bxslider
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google


$(function() {
  $('#p_listing_p_image').on('change', function(event) {
    var files = event.target.files;
    var image = files[0]
    var reader = new FileReader();
    reader.onload = function(file) {
      var img = new Image();
      console.log(file);
      img.src = file.target.result;
      $('#target').html(img);
    }
    reader.readAsDataURL(image);
    console.log(files);
  });

  $( "#datepicker" ).datepicker();

    $(document).ready(function(){
        $('.bxslider').bxSlider();
        pagerCustom: '#bx-pager'
    });

});



