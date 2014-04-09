"use strict"
angular.module("MobileCMSApp").factory "MobileService", [
  'Restangular'
  'ServerCurrent'
  '$state'
  (Restangular, ServerCurrent, $state) ->
    Restangular.setBaseUrl(ServerCurrent.channel_server)
    Restangular.setRequestSuffix('.json')
    Restangular.setErrorInterceptor (error)->
      console.log error
      if error.status is 403
        # $state.go 'login'
        window.location = window.location.origin + "/login.html"

    Restangular.setDefaultHttpFields
      withCredentials: true
    Restangular
]