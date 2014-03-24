"use strict"
angular.module("MobileCMSApp").controller "ActivityCtrl", ['$scope', 'Activity' ,($scope, Activity) ->
  # $scope.activities = Activity.query()
  $scope.awesomeThings = [
    "HTML5 Boilerplate"
    "AngularJS"
    "Karma"
  ]
  $scope.activity =
    title: "今晚打老虎"
    type: 1
    status: 1
    published: 1
    order: 0

    radio: "middle"
  $scope.showValues = =>
    console.log $scope.activity
]