"use strict"
angular.module("MobileCMSApp").controller "BulletinNewCtrl", [
  '$scope'
  'MobileService'
  '$stateParams'  
  ($scope, MobileService, $stateParams) ->
    $scope.bulletin =
      type: 0
      userType: $stateParams.userType ? 0

    $scope.submit = ->
      body = {Bulletin:$scope.bulletin}
      MobileService.all('bulletins').post(body).then((bulletin)->
        history.back()
        scope.$apply()
      ,->
        console.log 'create error'
        console.log arguments
      )
    
]