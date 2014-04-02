"use strict"
angular.module("MobileCMSApp").controller "ChannelListCtrl", [
  '$scope'
  'Restangular'
  '$state' 
  ($scope, MobileService, $state) ->
    channels = MobileService.all('channels')
    $scope.channelList = channels.getList().$object
]
