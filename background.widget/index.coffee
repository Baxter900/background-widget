

showBackgroundColor: false

backgroundColor: '#A5AAC4'

command: ""

refreshFrequency: 100000000

render: (output) ->
  imageSet = 'desert-islands'

  """
  <style>
    @-webkit-keyframes float1{
       from{top: 0px}
       to{top: 80px}
    }
    @-webkit-keyframes float2{
       from{top: 60px}
       to{top: 0px}
    }
    @-webkit-keyframes float3{
       from{top: 0px}
       to{top: 40px}
    }
    @-webkit-keyframes float4{
       from{top: 20px}
       to{top: 0px}
    }
    @-webkit-keyframes float5{
       from{top: 0px}
       to{top: 10px}
    }
  </style>
  <div class="color"></div>
  <img class="img1" src="background.widget/#{imageSet}/1.png">
  <img class="img2" src="background.widget/#{imageSet}/2.png">
  <img class="img3" src="background.widget/#{imageSet}/3.png">
  <img class="img4" src="background.widget/#{imageSet}/4.png">
  <img class="img5" src="background.widget/#{imageSet}/5.png">
"""

afterRender: (domEl) ->
  if @showBackgroundColor
    $(domEl).find('.color').css('visibility', 'visible')
    $(domEl).find('.color').css('background-color', @backgroundColor)

style: """
  img
    position: absolute
    top: 0px
    left: 0px
    background-size: 1920px 1080px
    height: 1080px
    width: 1920px
    animation-iteration-count: infinite
    animation-timing-function: linear
    animation-direction: alternate

  .color
    position: absolute
    top: 0px
    left: 0px
    height: 1080px
    width: 1920px
    background-size: 1920px 1080px
    visibility: hidden

  .img1
    z-index: 50
    animation-name: float1
    animation-duration: 10s

  .img2
    z-index: 40
    animation-name: float2
    animation-duration: 11s

  .img3
    z-index: 30
    animation-name: float3
    animation-duration: 12s

  .img4
    z-index: 20
    animation-name: float4
    animation-duration: 13s

  .img5
    z-index: 10
    animation-name: float5
    animation-duration: 14s
"""
