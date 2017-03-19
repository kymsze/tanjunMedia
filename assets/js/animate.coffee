$HeroFooter = $('.hero-footer')
$Video = $('video')
$Nav1 = $('#nav1')
$Nav2 = $('#nav2')
$NavLogo = $('.navlogo')
$PlayButton = $('.play-btn')
$ScreenBigEnough = false

ScreenBigEnough = (width, height) ->
  if width >= 800 and height >= 600
    true
  else if width >= 700 and height <= 640
    false
  else if width <= 700 and height <= 560
    false
  else
    true

$(document).ready ->
  console.log(ScreenBigEnough $(window).width(), $(window).height())
  $('.mobile-nav-link').click ->
    $('#button').prop('checked', false)
  return

if ScreenBigEnough $(window).width(), $(window).height()
  $('html').removeClass('fullpage-false')
  $('.section').removeAttr('id');
  $('#fullpage').fullpage
    fixedElements: '.navigation, .hero-footer'
    anchors: [
      'firstPage'
      'secondPage'
      'thirdPage'
      'fourthPage'
      'fithPage'
      'sixthPage'
      'seventhPage'
      'eighthPage'
      'ninthPage'
    ]
    onLeave: (index, nextIndex, direction) ->

      # Fade footer
      if index == 1 and nextIndex == 2
        $HeroFooter.addClass('animated fadeOutDown')

      if index == 2 and nextIndex == 1
        $HeroFooter.removeClass 'animated fadeOutDown'
        $HeroFooter.addClass('animated fadeInUp')

      #Fade nav
      if index == 1 and nextIndex == 2
        $Nav1.removeClass('slideRight')
        $Nav1.addClass('animated slideLeft')

        $Nav2.removeClass('slideLeft')
        $Nav2.addClass('animated slideRight')

        $NavLogo.removeClass('animated fadeOut')
        $NavLogo.addClass('animated fadeIn').css('animation-delay', '0.2s')

      if index == 2 and nextIndex == 1

        $NavLogo.removeClass 'animated fadeIn'
        $NavLogo.addClass('animated fadeOut')

        $Nav1.removeClass('animated slideLeft')
        $Nav1.addClass('animated slideRight')

        $Nav2.removeClass('animated slideRight')
        $Nav2.addClass('animated slideLeft')

      # # Nav colour
      if index == 1 and nextIndex == 2
        $Nav2.addClass('pink-nav')
        $Nav1.addClass('pink-nav')

      if index == 2 and nextIndex == 1
        $Nav2.removeClass('pink-nav')
        $Nav1.removeClass('pink-nav')

        return
      return

    afterLoad: (anchorLink, index) ->
      if index == 1
        $NavLogo.addClass 'hidden'

      if index == 2
        $NavLogo.removeClass 'hidden'
        $PlayButton.addClass('animated tada')
        $Video.get(0).play()

      if index != 2
        $PlayButton.removeClass('animated tada')

      if index != 1
        $NavLogo.removeClass 'hidden'
        $NavLogo.removeClass 'animated fadeOut'
        $HeroFooter.addClass 'animated fadeOutDown'
        $HeroFooter.addClass 'animated fadeOutDown'
        $Nav2.addClass('pink-nav')
        $Nav1.addClass('pink-nav')

        return
      return


