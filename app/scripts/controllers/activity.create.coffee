"use strict"
angular.module("MobileCMSApp").controller "ActivityCreateCtrl", [
  '$scope'
  'MobileService'
  '$location'  
  ($scope, MobileService, $location) ->
    $scope.activity =
      type: 1
      order: 100
      status: 1
      published: false

    $scope.submit = ->
      body = {Activity:$scope.activity}
      MobileService.all('activities').post(body).then((activity)->
        history.back()
        scope.$apply()
      ,->
        console.log 'create error'
        console.log arguments
      )
]