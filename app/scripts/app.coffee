"use strict"

angular.module("MobileCMSApp", [
  "ngRoute"
  "restangular"
  "ui.router"
  "mgcrea.ngStrap"
  "common.server.current"
]).config [
  "$stateProvider"
  "$urlRouterProvider"
  ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider
      .when("", "/")
      .when("/", "/dashboard")
      # .when("/", "/login")
      .when("/activity", "/activity/list")
      .when("/bulletin", "/bulletin/list")
      .when("/channel", "/channel/list")

    $stateProvider
      .state("login",
        url: "/login"
        templateUrl: "views/login.html"
        controller: 'LoginCtrl'
      )
      .state("dashboard",
        url: "/dashboard"
        # views:
        templateUrl: "views/dashboard.html"
      )
      .state("activity",
        abstract: true
        url: "/activity"
        templateUrl: "views/activity.base.html"
      )
      .state("activity.list",
        url: "/list"
        templateUrl: "views/activity.list.html"
        controller: "ActivityListCtrl"
      )
      .state("activity.edit",
        url: "/edit/:id"
        templateUrl: "views/activity.detail.html"
        controller: "ActivityEditCtrl"
      )
      .state("activity.new",
        url: "/new"
        templateUrl: "views/activity.detail.html"
        controller: "ActivityCreateCtrl"
      )
      .state("bulletin",
        abstract: true
        url: "/bulletin"
        templateUrl: "views/bulletin.base.html"
      )
      .state("bulletin.list",
        url: "/list"
        templateUrl: "views/bulletin.list.html"
        controller: "BulletinListCtrl"
      )
      .state("bulletin.new",
        url: "/new/:userType"
        templateUrl: "views/bulletin.new.html"
        controller: "BulletinNewCtrl"
      )
      .state("channel",
        abstract: true
        url: "/channel"
        templateUrl: "views/channel.base.html"
      )
      .state("channel.list",
        url: "/list"
        templateUrl: "views/channel.list.html"
        controller: "ChannelListCtrl"
      )

]
