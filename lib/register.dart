import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册"),
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(30),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                  labelText: '确认密码',
                  hintText: '请输入密码',
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              RaisedButton(child: Text('注册',style: TextStyle(color: Colors.white),),color: Colors.green, onPressed: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('已有账号'),
                  FlatButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text('去登陆',style: TextStyle(color: Colors.green),))
                ],
              )
            ],
          ),
        ));
  }
}
