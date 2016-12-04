$ ->
  controller = new ScrollMagic

  hero_height = $( ".navigation" ).height()

  background_tween = TweenMax.to('#hero-gradient', 0.5, backgroundColor: 'rgba(2, 200, 255,.0)')
  background_tween_two = TweenMax.to('#hero-gradient', 0.5, backgroundColor: 'rgba(2, 200, 255, 1)')

  arrow_tween = TweenMax.to('.triangle-up-after', 0.1, {css: 'border-bottom-color: #02C8FF;'})
  arrow_buffer_tween = TweenMax.to('.buffer', 0.1, {css: 'background: #02C8FF;'})

  navbar_gradient = TweenMax.from('#navbar', 0.5, backgroundColor: 'rgba(2, 200, 255, 0)')
  logo_scale = TweenMax.to('#logo', 20, scale: 0.45)
  menu_move = TweenMax.to("#nav-half-one", 1, {css:'padding-right':"100px"})

  play_btn_tween = new TimelineLite
  play_btn_tween.to('#play-btn', 1, opacity: 0).to('#play-btn', 1, opacity: 1).to('#play-btn', 1, {scale:"1.1"}).to('#play-btn', 1, {scale:"1"})

  background_animate = new ScrollScene(
    duration: hero_height
    reverse: true).setPin('#sticky-hero').setTween(background_tween).addTo(controller)

  background_animate_two = new ScrollScene(
    duration: 200
    triggerElement: '#hero_footer_pin'
    offset: -60
    reverse: true).setTween(background_tween_two).addTo(controller)

  arrow_animate = new ScrollScene(
    duration: hero_height
    reverse: true).setTween(arrow_tween).addTo(controller)

  arrow_buffer_animate = new ScrollScene(
    duration: hero_height
    reverse: true).setTween(arrow_buffer_tween).addTo(controller)

  navbar_gradient_animate = new ScrollScene(
    duration: 10
    triggerElement: '#hero_footer_pin'
    offset: 100
    reverse: true).setTween(navbar_gradient).addTo(controller)

  play_btn_animate = new ScrollScene(
    duration: 650
    reverse: true).setTween(play_btn_tween).addTo(controller)

  pin_footer = new ScrollScene(
    duration: hero_height
    reverse: true).setPin('#hero-footer').addTo(controller)

  pin_nav_logo = new ScrollScene(
    triggerElement: '#main_nav_pin'
    triggerHook: 0
    reverse: true).setPin('#main_nav_pin').addTo(controller)

  scale_logo = new ScrollScene(
    triggerElement: '#main_nav_pin'
    duration: hero_height/2
    offset: 40
    reverse: true).setTween(logo_scale).addTo(controller)

  scale_menu = new ScrollScene(
    triggerElement: '#main_nav_pin'
    duration: hero_height/2
    offset: 40
    reverse: true).setTween(menu_move).addTo(controller)

return


  # twittertweenone = TweenMax.to('.twitter path', 1, fill: '#f05781' )
  # facebooktweenone = TweenMax.to('.facebook path', 1, fill: '#f05781' )
  # vimeotweenone = TweenMax.to('.vimeo path', 1, fill: '#f05781' )
  # youtubetweenone = TweenMax.to('.youtube path', 1, fill: '#f05781' )


  # youtubeanimateone = new ScrollScene(
  #   triggerElement: '#social-pink'
  #   offset: 220
  #   reverse: true).setTween(youtubetweenone).addTo(controller)

  # vimeoanimateone = new ScrollScene(
  #   triggerElement: '#social-pink'
  #   offset: 250
  #   reverse: true).setTween(vimeotweenone).addTo(controller)

  # twitteranimateone = new ScrollScene(
  #   triggerElement: '#social-pink'
  #   offset: 280
  #   reverse: true).setTween(twittertweenone).addTo(controller)

  # facebookanimateone = new ScrollScene(
  #   triggerElement: '#social-pink'
  #   offset: 310
  #   reverse: true).setTween(facebooktweenone).addTo(controller)

  # pinnavmenu = new ScrollScene(
  #   triggerElement: '#pin1'
  #   triggerHook: 0
  #   reverse: true).setPin('#pin1').addTo(controller)





