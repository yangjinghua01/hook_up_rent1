import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/utils/common_toast.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("设置")),
      ),
      body: ListView(
        children: [
          RaisedButton(onPressed: (){
            CommonToast.showToast("已经推出登陆");
          },
            child: Text('退出登陆',style: TextStyle(color: Colors.red),),
          )
        ],
      ),
    );
  }
}
