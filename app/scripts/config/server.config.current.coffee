'use strict'
angular.module('common.server.current', ['common.server.list', 'common.env'])
  .factory 'ServerCurrent',
    [
      'ServerList'
      'Env'
      (ServerList, Env) -> ServerList[Env.agent][Env.env]
    ]
