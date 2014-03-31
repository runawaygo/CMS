"use strict"
angular.module("MobileCMSApp").controller "MainCtrl", ['$scope', 'Activity' ,($scope, Activity) ->
  # $scope.activities = Activity.query()
  $scope.awesomeThings = [
    "HTML5 Boilerplate"
    "AngularJS"
    "Karma"
  ]

  $scope.activity = 
    type: 1
    status:
      1: true
  $scope.show = ->
    console.log $scope.activity
]