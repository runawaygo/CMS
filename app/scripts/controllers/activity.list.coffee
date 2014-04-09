"use strict"
angular.module("MobileCMSApp").controller "ActivityListCtrl", [
  '$scope'
  'MobileService'
  '$state' 
  ($scope, MobileService, $state) ->
    activities = MobileService.all('activities')
    activitiesList = activities.getList()

    $scope.activityList = activitiesList.$object
    $scope.delete = (item)->
      item.remove().then(->
        $scope.activityList = _.without($scope.activityList, item)
      )

    $scope.gotoEdit = (activityId)->$state.go('^.edit', {id:activityId})
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
