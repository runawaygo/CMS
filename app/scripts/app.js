'use strict';

angular.module('MobileCMSApp', ["ngRoute", "ngResource", "mgcrea.ngStrap", "ActivityService"])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
