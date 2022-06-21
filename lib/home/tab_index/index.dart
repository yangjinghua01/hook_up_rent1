import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_index/index_navigator.dart';
import 'package:hook_up_rent/seach_bar/index.dart';
import 'package:hook_up_rent/widget/common_swipper.dart';

import 'index_recommond.dart';
import 'info/index.dart';
class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SeachBar(),backgroundColor: Colors.white,),
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNacigator(),
          IndexRecommond(),
          Info(showTitle: true,)
          // Text("这是内容区")
        ],
      ),
    );
  }
}
