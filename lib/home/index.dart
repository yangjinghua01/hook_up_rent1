import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_index/index.dart';
import 'package:hook_up_rent/home/tab_info/index.dart';
import 'package:hook_up_rent/home/tab_profile/index.dart';
import 'package:hook_up_rent/home/tab_seach/index.dart';
import 'package:hook_up_rent/page_content.dart';

//1.需要准备四个tab内容去
List<Widget> tabViewList = [
  TabIndex(),
  TabSearch(),
  TabINfo(),
  TabProfile(),
];
//4个底部的bar
List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
  BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
  BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("资讯")),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("我的")),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
