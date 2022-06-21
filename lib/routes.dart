import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/index.dart';
import 'package:hook_up_rent/login.dart';
import 'package:hook_up_rent/register.dart';
import 'package:hook_up_rent/room_detail/index.dart';

import 'not_found.dart';

class Routes {
//  1.定义路由名称
  static String home = '/';
  static String login = '/login';
  static String roomDetal = '/room/:roomId';
  static String register = '/register';

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

//3。编写configureRouter 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetal, handler: _roomDetailHandler);
    router.define(register, handler: _registerHandler);
    router.notFoundHandler=_notFoundHandler;
  }
}
