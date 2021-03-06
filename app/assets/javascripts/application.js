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
//= require skrollr
//= require foundation
//= require turbolinks
//= require masonry.pkgd.min
//= require imagesloaded.pkgd.min.js
//= require_tree .

$(function(){ 
  $(document).foundation(); 
  skrollr.init({
    forceHeight: false
  });
  
  var $container = $('#masonry');
  $container.masonry({
          itemSelector : '.box',
          animate: true,
          columnWidth: 238,
          isFitWidth: true,
          gutter: 10
      });
  $container.imagesLoaded(function() {
      $container.masonry({
          itemSelector : '.box',
          animate: true,
          columnWidth: 238,
          isFitWidth: true,
          gutter: 10
      });
  });

  $('#search_item').fastLiveFilter('#masonry',{
    callback: function(){
      $container.masonry();
    }
  })
});