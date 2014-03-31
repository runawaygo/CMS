# ActivityService = angular.module('ActivityService')

console.log 'superwolf'
angular.module("ActivityService", [])
  .factory 'Activity', [
    ()->
      console.log "ActivityService"
  ]
