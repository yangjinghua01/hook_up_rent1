import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_seach/datalist.dart';
import 'package:hook_up_rent/widget/common_floating_button.dart';
import 'package:hook_up_rent/widget/room_list_item_widget.dart';

class RoomManagerPage extends StatefulWidget {
  const RoomManagerPage({Key? key}) : super(key: key);

  @override
  _RoomManagerPageState createState() => _RoomManagerPageState();
}

class _RoomManagerPageState extends State<RoomManagerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingActionButton(
          '发布房源',
              () => Navigator.pushNamed(context, 'room_add'),
        ),
        appBar: AppBar(
          title: const Center(
            child: Text("房屋管理"),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "空置",
              ),
              Tab(
                text: "已租",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
                children: dataList.map((e) => RoomListItem(data: e)).toList()),
            ListView(
                children: dataList.map((e) => RoomListItem(data: e)).toList()),
          ],
        ),
      ),
    );
  }
}
