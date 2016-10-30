$ ->
  controller = new ScrollMagic

  hero_height = $( ".hero" ).height()

  gradienttween = TweenMax.to('#hero-gradient', 0.5, backgroundColor: 'rgba(2, 200, 255,.85)')
  gradienttweentwo = TweenMax.to('#hero-gradient', 0.5, backgroundColor: 'rgba(2, 200, 255,1)')
  navbargradient = TweenMax.from('#navbar', 0.5, backgroundColor: 'rgba(2, 200, 255,.0)', delay: 4)
  twittertweenone = TweenMax.to('.twitter path', 1, fill: '#f05781' )
  facebooktweenone = TweenMax.to('.facebook path', 1, fill: '#f05781' )
  vimeotweenone = TweenMax.to('.vimeo path', 1, fill: '#f05781' )
  youtubetweenone = TweenMax.to('.youtube path', 1, fill: '#f05781' )
  logoscale = TweenMax.to('#logo', 20, scale: 0.45, delay: 4)
  menu_move = TweenMax.to("#nav-half-one", 1, {css:'padding-right':"100px"})

  gradientanimate = new ScrollScene(
    duration: hero_height
    reverse: true).setPin('#sticky-hero').setTween(gradienttween).addTo(controller)

  gradientanimatetwo = new ScrollScene(
    triggerElement: '#pin2'
    duration: hero_height
    reverse: true).setTween(gradienttweentwo).addTo(controller)

  navbargradientanimate = new ScrollScene(
    triggerElement: '#pin2'
    duration: hero_height
    reverse: true).setTween(navbargradient).addTo(controller)

  youtubeanimateone = new ScrollScene(
    triggerElement: '#social-pink'
    offset: 220
    reverse: true).setTween(youtubetweenone).addTo(controller)

  vimeoanimateone = new ScrollScene(
    triggerElement: '#social-pink'
    offset: 250
    reverse: true).setTween(vimeotweenone).addTo(controller)

  twitteranimateone = new ScrollScene(
    triggerElement: '#social-pink'
    offset: 280
    reverse: true).setTween(twittertweenone).addTo(controller)

  facebookanimateone = new ScrollScene(
    triggerElement: '#social-pink'
    offset: 310
    reverse: true).setTween(facebooktweenone).addTo(controller)

  pinnavmenu = new ScrollScene(
    triggerElement: '#pin1'
    triggerHook: 0
    reverse: true).setPin('#pin1').addTo(controller)

  pinnavlogo = new ScrollScene(
    triggerElement: '#pin2'
    triggerHook: 0
    reverse: true).setPin('#pin2').addTo(controller)

  scalelogo = new ScrollScene(
    triggerElement: '#pin2'
    duration: hero_height/2
    reverse: true).setTween(logoscale).addTo(controller)

  scalemenu = new ScrollScene(
    triggerElement: '#pin2'
    duration: hero_height/2
    reverse: true).setTween(menu_move).addTo(controller)

return






