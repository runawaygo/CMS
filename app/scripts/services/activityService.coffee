# ActivityService = angular.module('ActivityService')

console.log 'superwolf'
angular.module("ActivityService", ["ngResource"])
  .factory 'Activity', [
    '$resource'
    ($resource)->
      $resource 'http://127.0.0.1\\:6008/activities/:id.json'
  ]
