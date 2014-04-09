"use strict"
angular.module("MobileCMSApp").controller "LoginCtrl", [
  '$scope'
  'ServerCurrent'
  'Restangular'
  '$state' 
  ($scope, ServerCurrent, Restangular, $state) ->
    Restangular.setBaseUrl(ServerCurrent.channel_server)
    Restangular.setRequestSuffix('')
    # Restangular.setDefaultHttpFields
    #   withCredentials: true

    $scope.userinfo = {}
    $scope.submit = ->
      Restangular.all('login').post("username=admin&password=wangsisi").then(->
        console.log arguments
      )
    
]
