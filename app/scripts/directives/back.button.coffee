angular.module("MobileCMSApp").directive 'backButton', ->
    restrict: 'A',
    link: (scope, element, attrs)->
      goBack = ->
        history.back()
        scope.$apply()

      element.bind('click', goBack);

      