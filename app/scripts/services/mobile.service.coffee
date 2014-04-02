"use strict"
angular.module("MobileCMSApp").factory "MobileService", [
  'Restangular'
  'ServerCurrent'
  (Restangular, ServerCurrent) ->
    Restangular.setBaseUrl(ServerCurrent.channel_server)
    Restangular.setRequestSuffix('.json')
    Restangular
]