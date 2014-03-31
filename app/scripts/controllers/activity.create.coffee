"use strict"
angular.module("MobileCMSApp").controller "ActivityCreateCtrl", ['$scope', 'Activity', 'Restangular', '$location'  ,($scope, Activity, Restangular, $location) ->
  Restangular.setBaseUrl('http://127.0.0.1:6008')
  Restangular.setRequestSuffix('.json')

  $scope.activity =
    type: 1
    order: 100
    status: 1
    published: false

  $scope.submit = ->
    body = {Activity:$scope.activity}
    Restangular.all('activities').post(body).then((activity)->
      $location.path('/activity')
    ,->
      console.log 'create error'
      console.log arguments
    )
]