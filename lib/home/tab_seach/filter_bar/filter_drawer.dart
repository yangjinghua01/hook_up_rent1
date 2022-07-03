import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/scoped_model/room_filter.dart';
import 'package:hook_up_rent/utils/scoped_model_helper.dart';
import 'package:hook_up_rent/widget/commont_title.dart';

import 'data.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: ListView(
            children: [
              CommonTitle(title: '户型'),
              FilterDrawerItem(
                list: roomTypeList,
                selectIds: [],
                onChange: (s) {},
              ),
              CommonTitle(title: '朝向'),
              FilterDrawerItem(
                list: orientedList,
                selectIds: [],
                onChange: (s) {},
              ),
              CommonTitle(title: '楼层'),
              FilterDrawerItem(
                list: floorList,
                selectIds: [],
                onChange: (s) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterDrawerItem extends StatelessWidget {
  final List<GeneralType> list;
  final List<String> selectIds;
  final ValueChanged<String> onChange;

  const FilterDrawerItem(
      {Key? key,
      required this.list,
      required this.selectIds,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: list.map((e) {
        var isActive = selectIds.contains(e.id);
        return GestureDetector(
          onTap: () {
            if (onChange != null) onChange(e.id);
          },
          behavior: HitTestBehavior.translucent,
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 100,
            height: 40,
            decoration: BoxDecoration(
                color: isActive ? Colors.green : Colors.white,
                border: Border.all(width: 1, color: Colors.green)),
            child: Center(
              child: Text(
                e.name,
                style: TextStyle(color: isActive ? Colors.white : Colors.green),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
