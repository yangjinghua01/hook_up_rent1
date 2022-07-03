import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/index.dart';
import 'package:hook_up_rent/login.dart';
import 'package:hook_up_rent/page_content.dart';
import 'package:hook_up_rent/register.dart';
import 'package:hook_up_rent/room_add/index.dart';
import 'package:hook_up_rent/room_detail/index.dart';
import 'package:hook_up_rent/room_manage/index.dart';
import 'package:hook_up_rent/setting.dart';

import 'not_found.dart';

class Routes {
//  1.定义路由名称
  static String home = '/';
  static String login = '/login';
  static String roomDetal = '/roomDetail/:roomId';
  static String register = '/register';
  static String setting = '/setting';
  static String roomManager = '/roomManager';
  static String roomAdd ='room_add';
  static String seach ='search';
//2.定义路由处理函数
  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });
  static Handler _loginHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });
  static Handler _notFoundHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NontFountPage();
  });
  static Handler _roomDetailHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomDetailPage(params['roomId'][0]);
  });
  static Handler _registerHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RegisterPage();
  });
  static Handler _settingHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return Setting();
  });
  static Handler _roomManagerHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomManagerPage();
  });
  static Handler _roomAddHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RoomAddPage();
  });
  static Handler _seachHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return PageContent("seach");
  });
//3。编写configureRouter 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomDetal, handler: _roomDetailHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomManager, handler: _roomManagerHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.define(seach, handler: _seachHandler);
    router.notFoundHandler=_notFoundHandler;
  }
}
