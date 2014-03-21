"use strict"
angular.module("MobileCMSApp").controller "MainCtrl", ['$scope', 'Activity' ,($scope, Activity) ->
  $scope.activities = Activity.query()
  $scope.awesomeThings = [
    "HTML5 Boilerplate"
    "AngularJS"
    "Karma"
  ]
  $scope.button =
    toggle: false
    checkbox:
      left: false
      middle: true
      right: false

    radio: "middle"
  $scope.showValues = =>
    console.log $scope.button
]