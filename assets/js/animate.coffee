$ScreenBigEnough = false
$Video = $('video')
$HeroFooter = $('.hero-footer')
$Nav1 = $('#nav1')
$Nav2 = $('#nav2')
$NavLogo = $('.navlogo')
$PlayButton = $('.play-btn')

$ChatOneOne = $('.chat-1-1')
$ChatOneTwo = $('.chat-1-2')
$ChatOneThree = $('.chat-1-3')
$ChatOneFour = $('.chat-1-4')
$ChatOneFive = $('.chat-1-5')
$ChatOneSix = $('.chat-1-6')
$ChatOneSeven = $('.chat-1-7')

$ChatTwoOne = $('.chat-2-1')
$ChatTwoTwo = $('.chat-2-2')
$ChatTwoThree = $('.chat-2-3')
$ChatTwoFour = $('.chat-2-4')
$ChatTwoFive = $('.chat-2-5')
$ChatTwoSix = $('.chat-2-6')
$ChatTwoSeven = $('.chat-2-7')

$ChatRight = $('.chat-right')
$ChatLeft = $('.chat-left')
$ChatRightTwo = $('.chat-right-2')
$ChatLeftTwo = $('.chat-left-2')
$ResultBlock = $('.result-block')


# TODO split into three files

HomePage = ->
  $('#home-page').fullpage
      fixedElements: '.navigation, .hero-footer'
      anchors: ['Hero', 'ourReel', 'whoWeAre', 'whatWeCreate', 'whatWeCreateMore', 'whoWeWorkWith', 'meetTheTeam', 'getInTouch']
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


AnimateProblemOne = () ->
  $ChatRight.addClass('bounceInRight')
  $ChatLeft.addClass('bounceInLeft')
  $ChatOneOne.addClass('animated').css('animation-delay', '0.05s')
  $ChatOneTwo.addClass('animated').css('animation-delay', '0.50s')
  $ChatOneThree.addClass('animated').css('animation-delay', '1.40s')
  $ChatOneFour.addClass('animated').css('animation-delay', '2.30s')
  $ChatOneFive.addClass('animated').css('animation-delay', '3.20s')
  $ChatOneSix.addClass('animated').css('animation-delay', '4.10s')
  $ChatOneSeven.addClass('animated').css('animation-delay', '5.0s')

AnimateProblemTwo = () ->
  $ChatRightTwo.addClass('bounceInRight')
  $ChatLeftTwo.addClass('bounceInLeft')
  $ChatTwoOne.addClass('animated').css('animation-delay', '0.05s')
  $ChatTwoTwo.addClass('animated').css('animation-delay', '0.50s')
  $ChatTwoThree.addClass('animated').css('animation-delay', '1.40s')
  $ChatTwoFour.addClass('animated').css('animation-delay', '2.30s')
  $ChatTwoFive.addClass('animated').css('animation-delay', '3.20s')
  $ChatTwoSix.addClass('animated').css('animation-delay', '4.10s')
  $ChatTwoSeven.addClass('animated').css('animation-delay', '5.0s')

AnimateResults = () ->
  $ResultBlock.addClass('animated zoomIn').css('animation-delay', '0.30s')

AnimatePlayButton = () ->
  $PlayButton.addClass('animated tada')
  $Video.get(0).play()

RemoveAnimatePlayButton = () ->
  $PlayButton.removeClass('animated tada')

BigAndBold = ->
  $('#big-and-bold').fullpage
      fixedElements: '.navigation'
      navigation: true
      navigationPosition: 'right'
      anchors: [ 'WorkHero', 'theProblemOne', 'theProblemTwo', 'theSolutionOne', 'theSolutionTwo', 'theSolutionThree', 'theResultsOne', 'theResultsTwo', 'getInTouch']
      onLeave: (index, nextIndex, direction) ->
        if index == 1 and nextIndex == 2
          AnimateProblemOne()
        if index == 2 and nextIndex == 3
          AnimateProblemTwo()
        if index == 7 and nextIndex == 8
          AnimateResults()

      afterLoad: (anchorLink, index) ->
        if index == 7
          AnimatePlayButton()

        if index != 7
          RemoveAnimatePlayButton()

Campaigns = ->
  $('#campaigns').fullpage
      fixedElements: '.navigation'
      navigation: true
      navigationPosition: 'right'
      anchors: [ 'WorkHero', 'theProblemOne', 'theProblemTwo', 'theSolutionOne', 'theSolutionTwo', 'theResultsOne', 'theResultsTwo', 'getInTouch']
      onLeave: (index, nextIndex, direction) ->
        if index == 1 and nextIndex == 2
          AnimateProblemOne()
        if index == 2 and nextIndex == 3
          AnimateProblemTwo()
        if index == 6 and nextIndex == 7
          AnimateResults()

      afterLoad: (anchorLink, index) ->
        if index == 6
          AnimatePlayButton()

        if index != 6
          RemoveAnimatePlayButton()

DigitalInfluencer = ->
  $('#digital-influencer').fullpage
      fixedElements: '.navigation'
      navigation: true
      navigationPosition: 'right'
      anchors: [ 'WorkHero', 'theProblemOne', 'theSolutionOne', 'theSolutionTwo', 'theSolutionThree', 'theResultsOne', 'theResultsTwo', 'getInTouch']
      onLeave: (index, nextIndex, direction) ->
        if index == 1 and nextIndex == 2
          AnimateProblemOne()
        if index == 2 and nextIndex == 3
          AnimateProblemTwo()
        if index == 6 and nextIndex == 7
          AnimateResults()

      afterLoad: (anchorLink, index) ->
        if index == 6
          AnimatePlayButton()

        if index != 6
          RemoveAnimatePlayButton()

DigitalStrategy = ->
  $('#digital-strategy').fullpage
      fixedElements: '.navigation'
      navigation: true
      navigationPosition: 'right'
      anchors: [ 'WorkHero', 'theProblemOne', 'theSolutionOne', 'theSolutionTwo', 'theSolutionThree', 'theResultsOne', 'theResultsTwo', 'getInTouch']
      onLeave: (index, nextIndex, direction) ->
        if index == 1 and nextIndex == 2
          AnimateProblemOne()
        if index == 2 and nextIndex == 3
          AnimateProblemTwo()
        if index == 6 and nextIndex == 7
          AnimateResults()

      afterLoad: (anchorLink, index) ->
        if index == 6
          AnimatePlayButton()

        if index != 6
          RemoveAnimatePlayButton()

ShortForm = ->
  $('#short-form').fullpage
      fixedElements: '.navigation'
      anchors: [ 'WorkHero', 'theProblemOne', 'theProblemTwo', 'theSolutionOne', 'getInTouch']
      onLeave: (index, nextIndex, direction) ->
        if index == 1 and nextIndex == 2
          AnimateProblemOne()
        if index == 2 and nextIndex == 3
          AnimateProblemTwo()

SmallAndNimble = ->
  $('#small-and-nimble').fullpage
      fixedElements: '.navigation'
      navigation: true
      navigationPosition: 'right'
      anchors: [ 'WorkHero', 'theProblemOne', 'theProblemTwo', 'theSolutionOne', 'theSolutionTwo', 'theResultsOne', 'theResultsTwo', 'getInTouch']
      onLeave: (index, nextIndex, direction) ->
        if index == 1 and nextIndex == 2
          AnimateProblemOne()
        if index == 2 and nextIndex == 3
          AnimateProblemTwo()
        if index == 6 and nextIndex == 7
          AnimateResults()

      afterLoad: (anchorLink, index) ->
        if index == 6
          AnimatePlayButton()

        if index != 6
          RemoveAnimatePlayButton()

MeetTheTeam = ->
  $('#meet-the-team').fullpage
      fixedElements: '.navigation'
      navigation: true
      navigationPosition: 'right'
      anchors: [ 'whoWeAreNot', 'WhoWeAreNotTwo', 'Hiring', 'whoWeAre:)']
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

ActiveSection = (hash) ->
  $('a').removeClass 'current'
  if location.hash == "#whatWeCreateExt"
    $(".extended").addClass 'current'
  else
    $('a[href*=\'' + location.hash + '\']').addClass 'current'
  return

resize = ->
  if window.innerHeight != height
    height = window.innerHeight
    $('.section').css 'height', height + 'px'
  return

$(document).ready ->

  ActiveSection(location.hash)

  window.addEventListener 'hashchange', ((event) ->
    ActiveSection(location.hash)
  ), false

  if $Video.length
    console.log("video")
    $Video.get(0).play()
    $('.mobile-nav-link').click ->
      $('#button').prop('checked', false)

  if ScreenBigEnough $(window).width(), $(window).height()
    $('html').removeClass('fullpage-false')
    $('.section').removeAttr('id');
    $('.nav-no-js').addClass('hidden')
    $('.nav-js').removeClass('hidden')

    if $('#home-page').length
      HomePage()
    else if $('#big-and-bold').length
      BigAndBold()
    else if $('#campaigns').length
      Campaigns()
    else if $('#digital-influencer').length
      DigitalInfluencer()
    else if $('#digital-strategy').length
      DigitalStrategy()
    else if $('#short-form').length
      ShortForm()
    else if $('#small-and-nimble').length
      SmallAndNimble()
    else if $('#meet-the-team').length
      MeetTheTeam()

    height = window.innerHeight
    a = setInterval((->
      $(window).scrollTop -1
      resize()
      return
    ), 500)
    # Don't lower more than 500ms, otherwise there will be animation-problems with the  Safari toolbar
    $(window).on 'resize', ->
      resize()
      return

  else
    $('.nav-js').addClass('hidden')
    $('.nav-no-js').removeClass('hidden')
    return
