"use strict"
angular.module("MobileCMSApp").controller "ChannelListCtrl", [
  '$scope'
  'Restangular'
  '$state' 
  ($scope, MobileService, $state) ->
    channels = MobileService.all('channels')
    channelList = channels.getList()

    $scope.channelList = channelList.$object
]
