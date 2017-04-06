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



$Typer = typer('.typer-box')

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
      # if index == 1 and nextIndex == 2
        # $Typer
        #   .cursor({block: true})
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue(" Hey Tanjun", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" Hey guys", 50)
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue("   Can you communicate the message that over 1,300 British athletes are funded by The National Lottery, making them some of the best athletes in the world?", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" Yeah, no worries!", 50)
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue(" Yeah, BTW, can you communicate it to a completely new young audience that thinks The National Lottery was created in the early 18th centenary by some ‘old dudes’.", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" Ha! Young people hey, lol. Yep, no worries.", 50)
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue(" Also, can you raise awareness that as well as athletes, The National Lottery pretty much funds every cool thing ever, across the UK. In fact, can you also communicate the fact we have funded over 500k projects.", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" Right! Yeah, we’ll add that to the list.", 50)
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue(" Great, thank you!", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" You’re welcome", 50)
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue(" Oh, one other thing…", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" Yeah, sure, go for it!", 50)
        #   .line("<span class='highligh-blue'><b>The National Lottery:</b></class>", 10)
        #   .continue(" You’ll need to also generate over 2 million views and help shift the perception of the National Lottery to a more playful, confident and self-aware brand as well as driving significant engagement across our new social channels.", 50)
        #   .line("<span class='highligh-pink'><b>Tanjun:</b></class>", 10)
        #   .continue(" Errr, yep, we can do that!!!!! Nooooo problem!!!", 50)


    afterLoad: (anchorLink, index) ->

      if index == 1
        $Typer
          .empty

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
