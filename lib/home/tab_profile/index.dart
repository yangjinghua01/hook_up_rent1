import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/home/tab_index/info/index.dart';
import 'package:hook_up_rent/home/tab_profile/advertisement.dart';
import 'package:hook_up_rent/home/tab_profile/header.dart';

import 'function_button.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wode"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("setting");
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: ListView(
        children: [
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(
            showTitle: true,
          )
        ],
      ),
    );
  }
}
