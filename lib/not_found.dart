import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NontFountPage extends StatelessWidget {
  const NontFountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("404"),
      ),
      body: Text("您访问的页面不存在"),
    );
  }
}
