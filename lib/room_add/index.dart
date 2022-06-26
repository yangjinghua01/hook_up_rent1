import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/widget/common_floating_button.dart';
import 'package:hook_up_rent/widget/common_form_item.dart';
import 'package:hook_up_rent/widget/common_radio_form_item.dart';
import 'package:hook_up_rent/widget/commont_title.dart';

class RoomAddPage extends StatefulWidget {
  const RoomAddPage({Key? key}) : super(key: key);

  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int rentType = 0; // 租凭方式
  int decorationType = 0; // 装修

  int roomType = 0; // 户型
  int floor = 0; // 楼层
  int oriented = 0; // 朝向

  var titleController = TextEditingController(); // 描述
  var descController = TextEditingController(); // 描述
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("房源发布"),
        ),
      ),
      body: ListView(
        children: [
          CommonTitle(title: "房源信息"),
          CommonFormItem(
            label: '小区',
            contentBuilder: (context) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  Navigator.pushNamed(context, 'search');
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '请选择小区',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.keyboard_arrow_right)
                      ]),
                ),
              );
            },
          ),
          CommonFormItem(
            label: '租金',
            suffixText: '元/月',
            hintText: '请输入租金',
            controller: TextEditingController(),
          ),
          CommonFormItem(
            label: '大小',
            suffixText: '平方米',
            hintText: '请输入房屋大小',
            controller: TextEditingController(),
          ),
          CommonRadioFormItem(
            label: '租凭方式',
            options: const ['合租', '整租'],
            value: rentType,
            onChange: (index) {
              setState(() => rentType = index!);
            },
          ),

          CommonTitle(title: "房屋头像"),
          CommonTitle(title: "房屋标题"),
          CommonTitle(title: "房屋配置"),
          CommonTitle(title: "房屋描述")
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton("提交", () {}),
    );
  }
}
