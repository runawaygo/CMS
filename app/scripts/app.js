'use strict';

angular.module('MobileCMSApp', ["ngRoute", "restangular", "mgcrea.ngStrap", "ActivityService"])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/activity.list.html',
        controller: 'ActivityListCtrl'
      })
      // .when('/', {
      //   templateUrl: 'views/activity.html',
      //   controller: 'ActivityCreateCtrl'
      // })
      .when('/activity/new', {
        templateUrl: 'views/activity.html',
        controller: 'ActivityCreateCtrl'
      })
      .when('/activity', {
        templateUrl: 'views/activity.list.html',
        controller: 'ActivityListCtrl'
      })
      .when('/activity/:id', {
        templateUrl: 'views/activity.html',
        controller: 'ActivityEditCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
