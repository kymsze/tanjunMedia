jQuery(document).ready(function() {
  if($('video#vid').length) {
    scaleVideo();
    $('video#vid').on("loadedmetadata", scaleVideo);
  }

  function scaleVideo(){

    $('video#vid').height = 500;
    $('video#vid').width = 500;

    var windowHeight = $(window).height();
    var windowWidth = $(window).width();

    var videoNativeWidth = $('video#vid')[0].videoWidth;
    var videoNativeHeigh = $('video#vid')[0].videoHeight;

    var heightScaleFactor = windowHeight / videoNativeHeigh;
    var widthScaleFactor = windowWidth / videoNativeWidth;

    if(widthScaleFactor > heightScaleFactor) {
      var scale = widthScaleFactor;
    } else {
      var scale = heightScaleFactor;
    }

    var scaledVideoHeight = videoNativeHeigh * scale;
    var scaledVideoWidth = videoNativeWidth * scale;

    $('video#vid').height(scaledVideoHeight);
    $('video#vid').width(scaledVideoWidth);
  }
})
