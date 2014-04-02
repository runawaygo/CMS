"use strict"
angular.module("MobileCMSApp").controller "BulletinListCtrl", [
  '$scope'
  'MobileService'
  '$state' 
  ($scope, MobileService, $state) ->
    $scope.categoryList =[
        filter:
          userType: 0
        type:"游客"
      ,
        filter:
          userType: 1
        type:"注册用户"
      ,
        filter:
          userType: 3
        type:"激活客户"
    ]
    
    bulletins = MobileService.all('bulletins').getList()

    $scope.bulletinList = bulletins.$object

    bulletins.then(->
      $scope.activeBulletinList = _.chain($scope.bulletinList)
        .reject({"userType": null})
        .groupBy('userType')
        .map((list)->
          _.max(list, 'id')
        ).value()
    ) 
]

angular.module("MobileCMSApp").filter "bulletinTypeTranslate", ->
  map = ["不显示", "聊天", "活动", "资讯"]
  (input)-> map[input]

angular.module("MobileCMSApp").filter "bulletinUserTypeTranslate", ->
  map = ["游客", "注册用户", "", "激活客户"]
  (input)-> map[input]

angular.module("MobileCMSApp").filter "bulletinActiveFilter", ->
  (array, input)-> true

