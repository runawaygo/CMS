"use strict"
angular.module("MobileCMSApp").controller "ActivityEditCtrl", ['$scope', 'Activity' ,($scope, Activity) ->

  $scope.awesomeThings = [
    "HTML5 Boilerplate"
    "AngularJS"
    "Karma"
  ]
  $scope.activity = Activity.get({id:97})


  $scope.showValues = =>
    console.log $scope.activity
]