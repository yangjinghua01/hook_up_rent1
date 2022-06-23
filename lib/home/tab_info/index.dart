import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_index/info/index.dart';
import 'package:hook_up_rent/seach_bar/index.dart';

class TabINfo extends StatefulWidget {
  const TabINfo({Key? key}) : super(key: key);

  @override
  _TabINfoState createState() => _TabINfoState();
}

class _TabINfoState extends State<TabINfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SeachBar(inputValue: "",onSeach: (){
            Navigator.of(context).pushNamed("seach");
          },),
        ),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Info(),
          Info(),
          Info(),
        ],
      ),
    );
  }
}
