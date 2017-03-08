//= require js/svg
//= require js/scroll
//= require js/jquery.fullPage.js
//= require js/animate


(function() {
  var burger, header;
  burger = document.querySelector('.burger-container');
  header = document.querySelector('.header');
  burger.onclick = function() {
    header.classList.toggle('menu-opened');
  };
})();
