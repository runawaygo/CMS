"use strict"
angular.module("MobileCMSApp").controller "MainCtrl", ['$scope', 'Activity' ,($scope, Activity) ->
  console.log Activity.query()
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

    radio: "left"
]