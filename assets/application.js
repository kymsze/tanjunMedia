//= require js/svg
//= require js/scroll
//= require js/jquery.fullPage.js

$(document).ready(function() {
  $('#fullpage').fullpage({
    fixedElements: '.navigation, .hero-footer'
  });
});
