"use strict"
angular.module("MobileCMSApp").controller "ActivityEditCtrl", [
  '$scope'
  '$stateParams'
  'MobileService'
  '$location'
  ($scope, $stateParams, MobileService, $location) ->
    $scope.activity = MobileService.one('activities', $stateParams.id).get().$object

    $scope.submit = ->
      body = {Activity: $scope.activity}
      $scope.activity.customPUT(body).then((activity)->
        history.back()
        scope.$apply()
      ,->
        console.log 'update error'
        console.log arguments
      ) 

    $scope.delete = ->
      $scope.activity.remove().then((activity)->
        history.back()
        scope.$apply()
      ,->
        console.log 'delete error'
        console.log arguments
      ) 
]