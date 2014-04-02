"use strict"
angular.module("MobileCMSApp").controller "LoginCtrl", [
  '$scope'
  'MobileService'
  '$state' 
  ($scope, MobileService, $state) ->
    
    $scope.userinfo = {}
    $scope.submit = ->
      MobileService.all('login').post($scope.userinfo).then(->
        console.log arguments
      )
    
]
