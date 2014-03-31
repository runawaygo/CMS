"use strict"
angular.module("MobileCMSApp").controller "ActivityEditCtrl", [
  '$scope'
  'Activity'
  '$routeParams'
  'Restangular'
  '$location'
  ($scope, Activity, $routeParams, Restangular, $location) ->
    Restangular.setBaseUrl('http://127.0.0.1:6008')
    Restangular.setRequestSuffix('.json')


    $scope.activity = Restangular.one('activities', $routeParams.id).get().$object

    $scope.submit = ->
      body = {Activity: $scope.activity}
      $scope.activity.customPUT(body).then((activity)->
        $location.path('/activity')
      ,->
        console.log 'update error'
        console.log arguments
      ) 

    $scope.delete = ->
      $scope.activity.remove().then((activity)->
        $location.path('/activity')
      ,->
        console.log 'delete error'
        console.log arguments
      ) 
]