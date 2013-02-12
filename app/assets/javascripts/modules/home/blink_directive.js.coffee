angular.module('my-home').directive 'blink', [

  '$window'

  ($window) ->
    link: (scope, element) ->
      element.css 'margin', '20px'
      border = false
      $window.setInterval ->
        if border
          element.css 'border', 'red 5px dashed'
        else
          element.css 'border', 'none'
        border = !border
      , 1000
]
