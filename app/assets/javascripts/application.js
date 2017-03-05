// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap-sprockets
//= require bootstrap/modal
//= require_tree .
//
//
// $(function(){
//  var shrinkHeader = 120;
//   $(window).scroll(function() {
//     var scroll = getCurrentScroll();
//       if ( scroll < shrinkHeader ) {
//            $('.header-scroll').hide();
//         }
//         else {
//             $('.header-scroll').show();
//         }
//   });
// function getCurrentScroll() {
//     return window.pageYOffset || document.documentElement.scrollTop;
//     }
// });



$(window).scroll(function () {

  if ($(this).scrollTop() > 200) {
    if ($('.row2').is(':animated')) {
      return false
    }
    $('.row2').addClass('row2_fixed') // 让导航栏固定在顶部
    $('.row2').stop().animate({top: 0}, 600) // 在600ms内，慢慢地出来
  } else {
    $('.row2').css({top: -80})
    $('.row2').removeClass('row2_fixed')
  }
})
