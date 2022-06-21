import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/routes.dart';

class PageContent extends StatelessWidget {
  final String name;
  PageContent(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("当前页面${name}"), 
      ),
      body: ListView(
        children: [
          FlatButton(onPressed: (){
            Navigator.pushNamed(context, Routes.login);
          }, 
              child: Text(Routes.login)),
          FlatButton(onPressed: (){
            Navigator.pushNamed(context, '/aaaa');
          },
              child: Text("不存在的页面")),
          FlatButton(onPressed: (){
            Navigator.pushNamed(context, '/room/2222');
          },
              child: Text("房屋详情页，id222")),
        ],
      ),
    );
  }
}
