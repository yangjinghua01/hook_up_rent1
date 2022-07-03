import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/index.dart';
import 'package:hook_up_rent/login.dart';
import 'package:hook_up_rent/routes.dart';
import 'package:hook_up_rent/scoped_model/room_filter.dart';
import 'package:scoped_model/scoped_model.dart';
class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FluroRouter router = FluroRouter();
    Routes.configureRoutes(router);
    return ScopedModel(
      model: FilterBarModel(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          body: HomePage(),
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: router.generator,
      ),
    );
  }
}
