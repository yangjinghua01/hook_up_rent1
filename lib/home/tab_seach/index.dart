import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_seach/datalist.dart';
import 'package:hook_up_rent/home/tab_seach/filter_bar/index.dart';
import 'package:hook_up_rent/seach_bar/index.dart';
import 'package:hook_up_rent/widget/room_list_item_widget.dart';

import 'filter_bar/data.dart';
import 'filter_bar/filter_drawer.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key? key}) : super(key: key);

  @override
  _TabSearchState createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        actions: [Container()],
        elevation: 0,
        title: SeachBar(
        showLoaction: true,
        showMap: true,
        inputValue: "",
        onSeach: (){
          Navigator.of(context).pushNamed("search");
        },
      ),),
      body: Column(
        children: [
          Container(
            height: 40.0,
            child: FilterBar(onChange: (FilterBarResult value) {  },),
          ),
          Expanded(child: ListView(
            children: dataList.map((e) =>RoomListItem(data: e,)).toList(),
          ))
        ],
      ),
    );
  }
}
