"use strict"
angular.module("MobileCMSApp").controller "ActivityCreateCtrl", ['$scope', 'Activity', 'Restangular'  ,($scope, Activity, Restangular) ->
  Restangular.setBaseUrl('http://127.0.0.1:6008')
  Restangular.setRequestSuffix('.json')
  $scope.awesomeThings = [
    "HTML5 Boilerplate"
    "AngularJS"
    "Karma"
  ]
  $scope.activity = {
    status:0
    type:1
  }

  $scope.create = ->
    console.log $scope.activity
    # abc = {Activity:$scope.activity}
    # console.log abc
    # Restangular.all('activities').post(abc).then((activity)->
    #   $scope.activity = activity      
    
    # )

  console.log 'activity create'
  $scope.showValues = =>
    console.log $scope.activity
]