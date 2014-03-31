// Generated by CoffeeScript 1.7.1
"use strict";
angular.module("MobileCMSApp").controller("ActivityEditCtrl", [
  '$scope', 'Activity', '$routeParams', 'Restangular', '$location', function($scope, Activity, $routeParams, Restangular, $location) {
    Restangular.setBaseUrl('http://127.0.0.1:6008');
    Restangular.setRequestSuffix('.json');
    $scope.activity = Restangular.one('activities', $routeParams.id).get().$object;
    $scope.submit = function() {
      var body;
      body = {
        Activity: $scope.activity
      };
      return $scope.activity.customPUT(body).then(function(activity) {
        return $location.path('/activity');
      });
    };
    return $scope["delete"] = function() {
      return $scope.activity.remove().then(function(activity) {
        return $location.path('/activity');
      });
    };
  }
]);