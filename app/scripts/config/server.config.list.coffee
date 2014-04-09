'use strict'
angular.module('common.server.list', [])
  .constant 'ServerList',
    tt:
      prod:
        chat_server: 'http://tt.chat.baidao.com'
        http_server: 'http://tt.chat-rest.baidao.com'
        channel_server: 'http://tt.channel.baidao.com'
        crm_server: 'http://tt.crm.baidao.com'
        voice_resource_server: 'http://tt.audio.baidao.com'
        device_server: 'http://tt.device.baidao.com'
      integration:
        chat_server: 'http://test.tt.chat.baidao.com'
        http_server: 'http://test.tt.chat-rest.baidao.com'
        channel_server: 'http://test.tt.channel.baidao.com'
        crm_server: 'http://192.168.26.21/crm-new'
        voice_resource_server: 'http://test.tt.audio.baidao.com'
        device_server: 'http://test.tt.device.baidao.com'
      dev:
        channel_server: 'http://127.0.0.1:6008'
    yg:
      prod:
        chat_server: 'http://yg.chat.baidao.com'
        http_server: 'http://yg.chat-rest.baidao.com'
        channel_server: 'http://yg.channel.baidao.com'
        crm_server: 'http://yg.crm.baidao.com'
        voice_resource_server: 'http://yg.audio.baidao.com'
        device_server: 'http://yg.device.baidao.com'
      integration:
        chat_server: 'http://test.yg.chat.baidao.com'
        http_server: 'http://test.yg.chat-rest.baidao.com:3008'
        channel_server: 'http://test.yg.channel.baidao.com'
        crm_server: 'http://192.168.26.21/crm-new'
        voice_resource_server: 'http://test.yg.audio.baidao.com'
        device_server: 'http://test.yg.device.baidao.com'
      dev:
        channel_server: 'http://127.0.0.1:6008'
      