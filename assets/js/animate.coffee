$ScreenBigEnough = false
$Video = $('video')
$HeroFooter = $('.hero-footer')
$Nav1 = $('#nav1')
$Nav2 = $('#nav2')
$NavLogo = $('.navlogo')
$PlayButton = $('.play-btn')



# TODO slipt into three files


FullPageOne = ->
  console.log("loaded one")
  $('#fullpage1').fullpage
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


FullPageTwo = ->
console.log("loaded two")
$('#fullpage2').fullpage
    fixedElements: '.navigation'
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


    afterLoad: (anchorLink, index) ->


      if index == 6
        $PlayButton.addClass('animated tada')
        $Video.get(0).play()

      if index != 6
        $PlayButton.removeClass('animated tada')

        return

#  END TODO

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

  $Video.get(0).play()
  $('.mobile-nav-link').click ->
    $('#button').prop('checked', false)

  if ScreenBigEnough $(window).width(), $(window).height()
    $('html').removeClass('fullpage-false')
    $('.section').removeAttr('id');

    if $('#fullpage1').length
      console.log("page1")
      FullPageOne()
    else if $('#fullpage2').length
      console.log("page2")
      FullPageTwo()

  else
    return
