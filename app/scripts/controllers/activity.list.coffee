"use strict"
angular.module("MobileCMSApp").controller "ActivityListCtrl", ['$scope', 'Activity', 'Restangular' ,($scope, Activity, Restangular) ->
  Restangular.setBaseUrl('http://127.0.0.1:6008')
  Restangular.setRequestSuffix('.json')

  activities = Restangular.all('activities')
  $scope.activityList = activities.getList().$object
  $scope.spy = (item)->
    console.log item
    alert 'superwolf'
  $scope.delete = (item)->
    item.remove().then(->
      $scope.activityList.remove((activity)-> activity.id is item.id)
    )
  $scope.deleteByIndex = (index)->
    # $object[index].remove(->
    #   alert 'superwolf'
    # )
  $scope.show = ->
    alert 'superwolf'
    console.log $scope.activityList.length
]

angular.module("MobileCMSApp").filter "activityPublishedTranslate", ->
   (input)-> if input then "是" else "否"

angular.module("MobileCMSApp").filter "activityTypeTranslate", ->
  map = ["无","游客","注册","电话","激活"]
  (input)-> map[input]

angular.module("MobileCMSApp").filter "activityStatusTranslate", ->
  map = ["关闭", "打开"] 
  (input)-> map[input]

angular.module("MobileCMSApp").filter "activityPublishedTranslate", ->
   (input)-> if input then "是" else "否"
